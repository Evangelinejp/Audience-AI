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

apply_fft <- function(audioSample) {
	Y <- fft(audioSample, inverse = FALSE)
	fftLength <- length(Y)
}

get_fftDeltaFreq <- function() {
	fftDeltaFreq <- ((fftFs / 2) / (fftLength + 1))
}

# extract peaks, or high values in sample post FFT
extractPeaks <- function(Y) {
	peaksLength <- (length(Y) / 2)	# FFTs duplicate data, hence /2
	# Keep values above 5% of maximum peak; others are set to "0"
	pct <- 0.05		# we keep values that are higher than 5% of max
	Ymax <- max(abs(samplePostFFT))
	pct_X_Ymax <- pct*Ymax
	Yfiltered <- abs(Y[1:peaksLength])	
	validValues <- which(Yfiltered >= pct_X_Ymax) 

	# Keep values that are above "0" and place them in a "peaks" matric
	peaks_x <- Yfiltered[validValues]
	peaks_y <- validValues * fftDeltaFreq
	peaks <- matrix( c(peaks_x, peaks_y), byrow=TRUE, 2, fftLength )
}

extractNotes <- function(extractedPeaks) {
	peaksLength <- length(extractedPeaks)
	extractedNotes <-

}

freqToNoteId <- function(freq) {
	refTableLength <- Length(Eq_Notes_Freq)

	indexOfNote <- which(Eq_Notes_Freq[ ,4] <= freq & freq <= Eq_Notes_Freq[ ,5])

	if(indexOfNote != NULL) {	
		noteIdFound <- Eq_Notes_Freq[indexOfNote][1]
	
	} else {
		noteIdFound <- Eq_Notes_Freq[152][1]  # 151 = Not A Note
	}
}

