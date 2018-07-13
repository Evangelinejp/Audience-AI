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


# Routine

# Pseudo-code: 
# Analyser ExtractedNotes de facon a quantifier toutes les notes avec les intensites recueillies.  Les trier et retourner les 12 plus intenses.

matchmaker <- function(musicData) {
	matchedNotesLength <- 152
	
	
}

# Main algorithm. - DELETE ALL, FOR REFERENCE ONLY
// TODO Link intensity to matched notes, at least sync them.
                        if (0 <= noteId && noteId <= 35 ) { // If Low Bass [C0-B2]
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[1] * (intWeightLowBass[0]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[2] * (intWeightLowBass[1]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[3] * (intWeightLowBass[2]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[4] * (intWeightLowBass[3]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[5] * (intWeightLowBass[4]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[6] * (intWeightLowBass[5]) );
                            sumAndHarmonics[0] = intensitiesSum;
                        }
                        if (36 <= noteId && noteId <= 47 ) { // If High Bass [C3-B3]
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[1] * (intWeightHighBass[0]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[2] * (intWeightHighBass[1]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[3] * (intWeightHighBass[2]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[4] * (intWeightHighBass[3]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[5] * (intWeightHighBass[4]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[6] * (intWeightHighBass[5]) );
                            sumAndHarmonics[0] = intensitiesSum;
                        }
                        if (48 <= noteId && noteId <= 59 ) { // If Low Midrange [C4-B4]
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[1] * (intWeightLowMidrange[0]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[2] * (intWeightLowMidrange[1]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[3] * (intWeightLowMidrange[2]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[4] * (intWeightLowMidrange[3]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[5] * (intWeightLowMidrange[4]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[6] * (intWeightLowMidrange[5]) );
                            sumAndHarmonics[0] = intensitiesSum;
                        }
                        if (60 <= noteId && noteId <= 83 ) { // If Midrange [C5-B6]
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[1] * (intWeightMidrange[0]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[2] * (intWeightMidrange[1]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[3] * (intWeightMidrange[2]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[4] * (intWeightMidrange[3]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[5] * (intWeightMidrange[4]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[6] * (intWeightMidrange[5]) );
                            sumAndHarmonics[0] = intensitiesSum;
                        }
                        if (84 <= noteId && noteId <= 107 ) { // If High Midrange [C7-B8]
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[1] * (intWeightHighMidrange[0]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[2] * (intWeightHighMidrange[1]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[3] * (intWeightHighMidrange[2]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[4] * (intWeightHighMidrange[3]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[5] * (intWeightHighMidrange[4]) );
                            intensitiesSum = intensitiesSum +
                                    ( sumAndHarmonics[6] * (intWeightHighMidrange[5]) );
                            sumAndHarmonics[0] = intensitiesSum;
                        }

// Add detected note to matchedNotes/Intensities
                        matchedNotes[matchesIndex] = noteId;
                        for(int h = 0; h < matchedIntensities[matchesIndex].length; h++) {
                            matchedIntensities[matchesIndex][h] = (int) (Math.rint(sumAndHarmonics[h]));
                        }
                        // Set Top Weight value if sums exceed previous value.
                        if (matchedIntensities[matchesIndex][0] > topWeight) {
                            topWeight = matchedIntensities[matchesIndex][0];
                        }
                        matchesIndex++;

