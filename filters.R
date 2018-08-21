# filters.R
#
# Contains a series of filters aiming at extracting musical data 
# from an audio file.
#
# Written by Jesse Bilton, 2018


# Load Packages
source('cansim_script.R')

# Global Variables of filters.R
fftFs <- 44100	# audio sample rate
fftLength <- 4096	# Fourrier Transform size
normFactor <- 1/fftLength # normalization factor based on size


# Routines
apply_fft <- function(aSample) {
  #prints a plot
  #Y <- spec(aSample, f = fftFs, wl = fftLength)
  #return(Y)
  #previous code for posterity:
  #Y <- fft(aSample, inverse = FALSE)
  #fftLength <- length(Y)
  #Normalization added 2018-08-21
  #To normalize, divide values by sample length - multiplying is more efficient than dividing
  Y <- fft(aSample, inverse = FALSE)*normFactor
	
	return(Y)
}

get_fftDeltaFreq <- function() {
	fftDeltaFreq <- ((fftFs) / (fftLength + 1))
	
	return(fftDeltaFreq)
}

# extract peaks, or high values in sample post FFT. Needs rewrite
extractPeaks <- function(Y) {
  
  fftDeltaFreq <- get_fftDeltaFreq()
	peaksLength <- (length(Y) / 2)	# FFTs duplicate data, hence /2
	# Keep values above 3% of maximum peak; others are set to "0"
	pct <- 0.03		# we keep values that are higher than 3% of max
	Ymax <- max(abs(Y))
	pct_X_Ymax <- pct*Ymax
	Yfiltered <- abs(Y[1:peaksLength])	
	validValues <- which(Yfiltered >= pct_X_Ymax)
	validLength <- length(validValues)
 
	# Keep values that are above "0" and place them in a "peaks" matrix which contains NoteId, Freq, Intensity.
	peaks_id <- rep(151, times=validLength)
	peaks_x <- Yfiltered[validValues]
	peaks_y <- validValues * fftDeltaFreq
	peaks <- matrix( c(peaks_id, peaks_x, peaks_y), byrow=TRUE, 3, validLength )
	
	return(peaks)
}

extractNotes <- function(extractedPeaks) {
  # Create empty ExtractedNotes matrix
	extractedNotesLength <- 152
	zeroes <- rep(0, times=extractedNotesLength)
	extractedNotes <- matrix( c(0:(extractedNotesLength-1), zeroes, zeroes), byrow=TRUE, 3, extractedNotesLength)
	
	# hacks to exclude NULL or empty vectors
	if(is.null(extractedPeaks)) {
	  return(extractedNotes)
	}
	peaksLength <- length(extractedPeaks[1,])
	if(peaksLength < 1) {
	  return(extractedNotes)
	}
	#browser()
	# Extract NoteId for each sample
	for (i in 1:peaksLength) {
	  #if(peaksLength == 391L) {print(i)}
	  extractedPeaks[1,i] <- freqToNoteId(extractedPeaks[3,i])
	}
	
	#Keep Highest Intensities for each extracted notes
	#for (i in extractedNotesLength) {
	#	if(extractedPeaks[1,i]) {}
	#}
	# For all peaks	
	for (i in 1:peaksLength) {
		# Search for matching note Id in extractedNotes
		for (j in 1:extractedNotesLength) {
			#if matching notes ID, validate intensities
			if(extractedPeaks[1,i] == extractedNotes[1,j]) {
				#if sample has a higher intensity than extracted, replace its value.
				if(extractedPeaks[2,i] > extractedNotes[2,j]) {
					extractedNotes[3,j] <- extractedPeaks[3,i]
					extractedNotes[2,j] <- extractedPeaks[2,i]
				}
			}
		}
	}
	
	# Note 151 - Not a note - has no intensity
	extractedNotes[2, 152] <- 0
	
	return(extractedNotes)
}

freqToNoteId <- function(freq) {
	refTableLength <- length(Eq_Notes_Freq)
	indexOfNote <- NULL
	noteIdFound <- NULL
	
	if(16 <= freq && freq <= 42192) {
	  indexOfNote <- which(Eq_Notes_Freq[ ,4] <= freq & freq <= Eq_Notes_Freq[ ,5])
	}

	if(!is.null(indexOfNote)) {	
		noteIdFound <- Eq_Notes_Freq[indexOfNote[1], 1]
	
	} else {
		noteIdFound <- Eq_Notes_Freq[152, 1]  # 151 = Not A Note
	}
	
	return(noteIdFound)
}

