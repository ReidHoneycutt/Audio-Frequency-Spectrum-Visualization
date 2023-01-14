# Audio-Frequency-Spectrum-Visualization
This is a nice aesthetic for visualizing audio frequency bands (a graphic representation of the sound timbre) in 2 dimensions. The one in the picture below uses 512 frequency bands. 

A synopsis of this program is that 2 variables, theta1 and theta2, are each drawing from sections of the sound spectrum of the user's audio input. We then use those numbers as inputs to trigonmetric functions (this part of the program can be experimented with, the aim was to restrict the domain to [-1, 1], so we can then map that domain to [0, 255] to get a color value. So in essence, the cells are each mapped to a color between (0, 0, 0) and (255, 255, 255) which relates to their associated frequency spectrum value. This program uses the FFT class from the processing sound library.


![main](/Screenshots/spectrum2.png)
