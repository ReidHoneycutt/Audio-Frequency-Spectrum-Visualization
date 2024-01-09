# Audio-Frequency-Spectrum-Visualization
This is an aesthetic for visualizing audio frequency bands (a graphic representation of the sound timbre of the user's audio input) in 2 dimensions. The one in the picture below uses 512 frequency bands. This is a Processing program. Processing is a Java-based creative coding framework.

A synopsis of this program is that 2 variables, theta1 and theta2, are each being assigned a value from the distribution of the sound spectrum of the user's audio input. We then use those numbers as arguments to trigonmetric functions, then take the output (this part of the program can be experimented with, the aim was to map the frequency spectrum values, which are very small float numbers, to the interval [-1, 1], so we can then map that domain onto [0, 255] to get a color value. In essence, the cells are each mapped to a color between (0, 0, 0) and (255, 255, 255) relating to their associated frequency spectrum value. This program uses the FFT class from the processing sound library.

# On the differences between an audio spectrum visualization and a typical spectrogram 
Spectrogram:

Purpose: Used for more detailed analysis of sound, common in scientific and engineering applications.
Representation: Shows how the amplitude of different frequencies varies over time.
Appearance: Typically displayed as a 2D plot, with one axis representing time, the other representing frequency, and color or brightness indicating amplitude.
Frequency Resolution: Generally higher than in audio spectrum visualizations. It's designed to provide detailed information about the frequency content over time.
Temporal Resolution: Captures changes in the frequency spectrum over time, allowing for analysis of how different sound components evolve.

Audio Spectrum Visualization:

Purpose: Typically used for aesthetic or entertainment purposes, such as in music visualizers.
Representation: Displays the amplitude (or intensity) of different frequencies at a given moment in time. It's like a snapshot of the sound's frequency content.
Appearance: Often shown as a bar or line graph, with each bar representing a specific frequency range. The height or length of each bar indicates the amplitude of that frequency.
Frequency Resolution: Can vary, but often lower than a spectrogram. It's more about providing a visually appealing representation than detailed frequency analysis.
Temporal Resolution: Shows the current state of the audio spectrum, usually updated in real-time to 'dance' along with the music.

![main](/Screenshots/spectrum2.png)
