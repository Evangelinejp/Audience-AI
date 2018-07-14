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
#source('equalizer.R')	# Loads audio equalizing filter values.
#source('match.R')	# Loads matching routines.
#source('refresh.R')	# Loads variable clearing routines.


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

# Load Audio File
sample <- readWave("Exp04_B5_Gd5_E5.wav", from = 0, to = Inf, units = "samples")


# Sample analysis
# Divide the wave into an array of samples, each 4098 samples
sampleL <- separateSamples(sample)
# 	Perform FFT
sampleFFT <- separateFFT(sampleL)
# 	Extract peaks
sampleNotes <- separateExtract(sampleFFT)

sampleNotes[[65]]

# 	Matchmaking

#	