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


# Routines
apply_fft <- function(wave) {
  Y <- spec(wave, f = fftFs, wl = fftLength)
  return(Y)
  #previous code for posterity:
	#Y <- fft(audioSample, inverse = FALSE)
	#fftLength <- length(Y)
}

get_fftDeltaFreq <- function() {
	fftDeltaFreq <- ((fftFs / 2) / (fftLength + 1))
	return(fftDeltaFreq)
}

# extract peaks, or high values in sample post FFT. Needs rewrite
extractPeaks <- function(Y) {
  
  #fftDeltaFreq <- get_fftDeltaFreq
	#peaksLength <- (length(Y) / 2)	# FFTs duplicate data, hence /2
	# Keep values above 5% of maximum peak; others are set to "0"
	#pct <- 0.05		# we keep values that are higher than 5% of max
	#Ymax <- max(abs(Y))
	#pct_X_Ymax <- pct*Ymax
	#Yfiltered <- abs(Y[1:peaksLength])	
	#validValues <- which(Yfiltered >= pct_X_Ymax) 

	# Keep values that are above "0" and place them in a "peaks" matrix which contains NoteId, Freq, Intensity.
	peaks_id <- rep(151, times=peaksLength)
	peaks_x <- Yfiltered[validValues]
	peaks_y <- validValues * fftDeltaFreq
	peaks <- matrix( c(peaks_id, peaks_x, peaks_y), byrow=TRUE, 3, fftLength )
}

extractNotes <- function(extractedPeaks) {
	# Create empty ExtractedNotes matrix
	extractedNotesLength <- 152
	zeroes <- rep(0, times:extractedNotesLength)
	extractedNotes <- matrix( c(0:151, zeroes, zeroes), byrow=TRUE, 3, extractedNotesLength)
	
	# Extract NoteId for each sample
	peaksLength <- length(extractedPeaks)
	for (i in peaksLength) {
		extractedPeaks[1,i] <- freqToNoteId(extractedPeaks[2,i])
	}
	
	#Keep Highest Intensities for each extracted notes
	for (i in extractedNotesLength) {
		if(extractedPeaks[1,i]) {}
	}
	# For all peaks	
	for (i in peaksLength) {
		# Search for matching note Id in extractedNotes
		for (j in extractedNotesLength) {
			#if matching notes ID, validate intensities
			if(extractedPeaks[1,i] == extractedNotes[1,j]) {
				#if sample has a higher intensity than extracted, replace its value.
				if(extractedPeaks[3,i] > extractedNotes[3,j]) {
					extractedNotes[3,j] <- extractedPeaks[3,i]
					extractedNotes[2,j] <- extractedPeaks[2,i]
				}
			}
		}
	}
}

freqToNoteId <- function(freq) {
	refTableLength <- Length(Eq_Notes_Freq)

	indexOfNote <- which(Eq_Notes_Freq[ ,4] <= freq & freq <= Eq_Notes_Freq[ ,5])

	#if(indexOfNote != NULL) {
	if(!is.null(indexOfNote)) {	
		noteIdFound <- Eq_Notes_Freq[indexOfNote][1]
	
	} else {
		noteIdFound <- Eq_Notes_Freq[152][1]  # 151 = Not A Note
	}
}

