# Audio-Frequency-Spectrum-Visualization
This is a nice aesthetic for visualizing audio frequency bands (a graphic representation of the sound timbre, in this case, of their computer's microphone, or other audio input) in 2 dimensions. The one in the picture below uses 512 frequency bands. 

A synopsis of this program is that 2 variables, theta1 and theta2, are each being assigned a value from the distribution of the sound spectrum of the user's audio input. We then use those numbers as arguments to trigonmetric functions, then take the output (this part of the program can be experimented with, the aim was to map the frequency spectrum values, which are very small float numbers, to the interval [-1, 1], so we can then map that domain onto [0, 255] to get a color value. In essence, the cells are each mapped to a color between (0, 0, 0) and (255, 255, 255) relating to their associated frequency spectrum value. This program uses the FFT class from the processing sound library.


![main](/Screenshots/spectrum2.png)
