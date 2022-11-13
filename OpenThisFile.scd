"/Users/williamrailton/Desktop/SonificationExperiment2/SuperColliderCode/Functions&Windows.rtf".loadPaths;

// This patch is an audio visual generator (evaluate above to generate).

// I apologise but you will have to change the file paths to the appropriate directories in the following files:

// The loadPath in the file "Functions&Windows.scd”.

// And obviously the above loadPath.

// The screen has been split into four sections, each representing a sound.

// Each sound is being controlled by different parts of the algorithmically generated circles. 

// The piece will not stop unless you tell it to, the best way to stop the piece and close the window is by re-compiling the library (cmd-k). 

// Below is a rough description of what each section is modulating:

// Bottom right

// Speed and the modulator frequency of PMOsc is being controlled by pen width.

// The frequency of the LFO (saw wave through band-pass filter), the frequency of the the second LFO (saw wave which is in the carrier frequency of PMOsc) and the number of harmonics are being modulated by different parameters of the circles.

// Top right 

// Speed is being controlled by pen width.
// Ringz freq is being modulated by different parameters of the circles.

// Bottom left

// The amp envelope and the speed are being controlled with the pen width. 
// The frequency and the LFO rate (noise placed in the n-harm argument of Blip) are being modulated by different parameters of the circles.
 
// Top left

// Decay time, the speed of the random reverb times and the LFO frequency (LFNoise) are being modulated by different parameters of the circles.
// The speed is being controlled by the pen width.

// I have enclosed some pictures and an audio file of the patch working correctly.
