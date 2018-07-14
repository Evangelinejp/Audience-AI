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
highMid <- c(8.0, 20.0, 0.0, 0.0, 0.0, 0.0)
notesEtHarmLength <- ncol(Notes_Et_Harm)

# Routine

# Pseudo-code: 
# Analyser ExtractedNotes de facon a quantifier toutes les notes avec les intensites recueillies.  Les trier et retourner les 12 plus intenses.

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
    
    if (84 <= noteId && noteId <= 107 ) { # If High Midrange [C7-B8]
      for(j in 1:notesEtHarmLength) {
        intensitiesSum <- (intensitiesSum + musicData[3, getNoteIndex(Notes_Et_Harm[i, j])] * highMid[j])
      }
    }
    
    matchedNotes[2, i] <- intensitiesSum
  }
  
  # Sort matchedNotes by intensity from highest to lowest.
  #sort(matchedNotes, decreasing = TRUE)
  #order(matchedNotes$2, decreasing = TRUE)
  return(matchedNotes)
  
}

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