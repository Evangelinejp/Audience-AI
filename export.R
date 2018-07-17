# export.R
#
# Formats obtained musical data for external manipulations
#
# Written by Jesse Bilton and Evangeline Joron-Parrot, 2018.
source('cansim_script.R')
source('match.R')


# Puts the content of a list into a 2D matrix. List must have elements with 2 rows and y columns.
listToArray <- function(aList) {
  listLength <- length(aList)
  
  # Create empty exportedNotes matrix of listLength x 152
  exportedNotesLength <- 152
  zeroes <- rep(0, times=exportedNotesLength)
  exportedNotes <- matrix( c(rep(zeroes, times=listLength)), byrow=TRUE, listLength, exportedNotesLength)
  
  # Fill matrix with values in list
  for(i in 1:(listLength-1)) {  # listLength-1 to avoid incomplete list errors.
    aRow <- zeroes
    for(j in 1:exportedNotesLength) {
      # Notes can be sorted by increasing notes Id or decreasing intensities.
      # In each case, notes will be copied following the order in aList.
      aRow[getNoteIndex(aList[[i]][1,j])] <- aList[[i]][2,j]
    }
    exportedNotes[i,] <- aRow
  }
  
  return(exportedNotes)
}


# Sorts list by increasing note Id
sortNotesListByIncreasingNoteId <- function(notesList) {
  listLength <- length(notesList)
  
  # Replace list values by sorted values
  for(i in 1:listLength) {
    if(is.vector(notesList[[i]][1,])) {
      # Sort matchedNotes by increasing note Id
      x <- notesList[[i]][1,] #noteId
      y <- notesList[[i]][2,] #intensity
      o <- order(x, decreasing=FALSE)
      notesList[[i]] <- rbind(x[o], y[o], deparse.level = 1)
      rownames(notesList[[i]]) <- c('Note Id', 'Intensity')
      colnames(notesList[[i]]) <- literals
    }
  }
  
  return(notesList)
}


# Sorts list by decreasing intensity
sortNotesListByDecreasingIntensity <- function(notesList) {
  listLength <- length(notesList)
  
  # Replace list values by sorted values
  for(i in 1:listLength) {
    if(is.vector(notesList[[i]][1,])) {
      # Sort matchedNotes by intensity from highest to lowest.
      x <- notesList[[i]][1,] #noteId
      y <- notesList[[i]][2,] #intensity
      o <- order(y, decreasing=TRUE)
      names(x) <- literals
      notesList[[i]] <- rbind(x[o], y[o], deparse.level = 1)
      rownames(notesList[[i]]) <- c('Note Id', 'Intensity')
    }
  }
  
  return(notesList)
}
