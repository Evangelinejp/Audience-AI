# stuff routines
# Test bench for testing stuff.

# load a script
source('cansim_script.R')
source('load_audio_file.R')

# Display freq and name of A4
stuff <- function() {
	freq <- Eq_Notes_Freq[58,3]
	print(freq)
	name <- Notes_A_Num[58]
	print(name)
	vide <- " "
	print(vide)
	nameAndFreq <- c('Name: ', name, 'Freq: ', freq)
	print(nameAndFreq)
	print(vide)
	fn <- enter_filename()
	print(fn)
 }