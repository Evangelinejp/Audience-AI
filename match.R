# match.R
#
# Contains musical data extraction by matching harmonics algorithm.
#
# Written by Jesse Bilton, 2018

# Load Pacakages
source('cansim_script.R')
source('filters.R')

# Variables
lowBass <- c(0.7, 0.5, 0.4, 0.2, 0.4, 0.2)
highBass <- c(0.6, 0.7, 0.7, 0.4, 0.2, 0.1)
lowMid <- c(0.9, 1.1, 1.1, 1.3, 0.6, 0.0)
mid <- c(1.9, 5.0, 2.0, 0.8, 0.0, 0.0)
highMid <- c(2.2, 6.6, 2.2, 1.1, 0.0, 0.0)
notesEtHarmLength <- ncol(Notes_Et_Harm)

# Routines

# Algorithm that extracts notes from filtered audio sample
matchmaker <- function(musicData) {
  # Create empty matchedNotes matrix
  matchedNotesLength <- 152
  zeroes <- rep(0, times=matchedNotesLength)
  matchedNotes <- matrix( c(0:151, zeroes), byrow=TRUE, 2, matchedNotesLength)
  
  # For all possible notes, add note's fundamental and harmonics intensities times the equalizing factor.
  for(i in 1:matchedNotesLength) {
    noteId <- musicData[1,i]  # noteId in int; C0 == 0; A4 == 57
    intensitiesSum <- 0 # Sum of intensities for each note
    
    if (0 <= noteId && noteId <= 35 ) { # If Low Bass [C0-B2]
      for(j in 1:notesEtHarmLength) {
        intensitiesSum <- (intensitiesSum + musicData[3, getNoteIndex(Notes_Et_Harm[i, j])] * lowBass[j])
      }
    }
    
    if (36 <= noteId && noteId <= 47 ) { # If High Bass [C3-B3]
      for(j in 1:notesEtHarmLength) {
        intensitiesSum <- (intensitiesSum + musicData[3, getNoteIndex(Notes_Et_Harm[i, j])] * highBass[j])
      }
    }
    
    if (48 <= noteId && noteId <= 59 ) { # If Low Midrange [C4-B4]
      for(j in 1:notesEtHarmLength) {
        intensitiesSum <- (intensitiesSum + musicData[3, getNoteIndex(Notes_Et_Harm[i, j])] * lowMid[j])
      }
    }
    
    if (60 <= noteId && noteId <= 83 ) { # If Midrange [C5-B6]
      for(j in 1:notesEtHarmLength) {
        intensitiesSum <- (intensitiesSum + musicData[3, getNoteIndex(Notes_Et_Harm[i, j])] * mid[j])
      }
    }
    
    if (84 <= noteId && noteId <= 120 ) { # If High Midrange [C7-C10]
      for(j in 1:notesEtHarmLength) {
        intensitiesSum <- (intensitiesSum + musicData[3, getNoteIndex(Notes_Et_Harm[i, j])] * highMid[j])
      }
    }
    
    matchedNotes[2, i] <- intensitiesSum
  }
  
  # Sort matchedNotes by intensity from highest to lowest.
  matchedNotes <- sortNotesByIntensity(matchedNotes)
  
  return(matchedNotes)
}

# returns note index according to it's note ID
getNoteIndex <- function(noteId) {
  noteIndex <- 152 #By default, Not a Note
  notesEtHarmLength <- length(Notes_Et_Harm)
  
  for(i in 1:notesEtHarmLength) {
    if(Notes_Et_Harm[i,1] == noteId) {
      noteIndex <- i
      return(noteIndex)
    }
  }
  return(noteIndex)
}

# sorts notes by intensity in matchedNotes
sortNotesByIntensity <- function(notesAndIntensities) {
  # Sort matchedNotes by intensity from highest to lowest.
  x <- notesAndIntensities[1,] #noteId
  y <- notesAndIntensities[2,] #intensity
  o <- order(y, decreasing=TRUE)
  names(x) <- literals
  notesAndIntensities <- rbind(x[o], y[o], deparse.level = 1)
  rownames(notesAndIntensities) <- c('Note Id', 'Intensity')
  
  return(notesAndIntensities)
}

# Displays top n notes and intensity
dispNAI <- function(notesAndInt, currentBlock=1, totalBlocks=1, printSize=12) {
  printContent <- rbind(notesAndInt[1, 1:printSize], notesAndInt[2, 1:printSize], deparse.level = 1)
  rownames(printContent) <- c('Note Id', 'Intensity')
  #print(c('Sample Block # ', currentBlock, ' of ', totalBlocks))
  cat("Sample Block # ", currentBlock, " of ", totalBlocks, "\n")
  print(printContent)
}