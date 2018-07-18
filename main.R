# Audience-AI
#
# Displays notes and chords contained in a .wav audio file.
#
# Written by Jesse Bilton and Evangeline Joron-Parrot, 2013-2018.


# Load Packages
library(audio)	# Loads 'audio' package for .wav file manipulation.
library(seewave)
library(tuneR)
source('cansim_script.R')	# Loads value tables for audio conversion.
source('load_audio_file.R')	# Loads 'load audio file' dialog routine.
source('filters.R')	# Loads audio data filter routines.
source('match.R')	# Loads matching routines.
source('export.R')  # Sort and export functions for data manipulation.
#source('refresh.R')	# Loads variable clearing routines. Good against memory leaks...


# Variables presentation
# 
# Global
# audioBytes: contains audio samples in bytes
# sampleRate: contains audio sample rate (samples per second)
# fftSamples: contains Fourrier Fast Transform convolution size
#
# Filter
# fftDeltaFreq: contains the gap between two frequencies
# filteredData: contains audio data post fft ( [x] freq, [y] intensity )
# peaks: contains audio data post filtering ( [x] notedId, [y] intensity )
#
# Match
# matchedNotes: contains notes of a given sample detected by matching.
# matchedIntensities: contains notes of a given sample detected by matching.

# Ask for Audio File
#audioFileName <- enter_filename()
audioFileName <- "Exp04_B5_Gd5_E5.wav"

# Load Audio File
inWave <- readWave(audioFileName, from = 0, to = Inf, units = "samples")
samples <- channel(inWave, 'left')

# Sample analysis
#Separates sample then puts it through all the functions for analysis
#maybe too unclean for main, should be moved into a function in filters
sampleLength <- length(samples)
listLength <- sampleLength %/% fftLength
sample <- vector("list", length = listLength) #saved in a list for future debugging's sake
sampleFFT <- vector("list", length = listLength) #when finished, change these to not lists to save space
samplePeaks <- vector("list", length = listLength)
sampleNotes <- vector("list", length = listLength)
sampleMatchedNotes <- vector("list", length = listLength)
sortedMatchedNotes <- vector("list", length = listLength)
for(i in 1:listLength) {
  # Divide the wave into an array of samples, each 4098 samples
  #sampleS[[i]] <- readWave("Exp04_B5_Gd5_E5.wav", from = (i*fftLength), to = ((i+1)*fftLength)-1, units = "samples")
  sample[[i]] <- samples@left[(i*fftLength):(((i+1)*fftLength)-1)]
  sample[[i]][is.na(sample[[i]])] <- 0
  # Fourier transform
  sampleFFT[[i]] <- apply_fft(sample[[i]])
  # Peaks extraction
  samplePeaks[[i]] <- extractPeaks(sampleFFT[[i]])
  # Filtered Notes
  sampleNotes[[i]] <- extractNotes(samplePeaks[[i]])
  # Matched Notes
  sampleMatchedNotes[[i]] <- matchmaker(sampleNotes[[i]])
  # Display Notes
  #dispNAI(sampleMatchedNotes[[i]], i, listLength)
}

# put files into exportedNotes for data mining
sortedMatchedNotes <- sortNotesListByIncreasingNoteId(sampleMatchedNotes)
exportNotes <- listToArray(sortedMatchedNotes)
