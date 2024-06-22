import processing.sound.*;

FFT fft;
AudioIn in;
int bands = 512;
float[] spectrum = new float[bands];

int step = 10;
int cell_w;
int cell_h;
int pad_x;
int pad_y;
int mod_bands;
float l_ratio = .35;
float u_ratio = .7;
int L = floor(l_ratio * bands);
int U = floor(u_ratio * bands);


void setup() {
  fullScreen();
  
  fft = new FFT(this, bands);
  in = new AudioIn(this, 0);
  in.start();
  fft.input(in);
  
  cell_w = floor(width / (U - L));
  cell_h = floor(height / (U - L));
  pad_x = (width - (U - L) * cell_w) / 2;
  pad_y = (height - (U - L) * cell_h) / 2;
}

void draw() {
  background(0);
  fft.analyze(spectrum);
  for (int i = 0; i < U - L; i++) {
    float theta1 = map(spectrum[i + L], 0, 0.001, 0, 2 * PI);
    for (int j = 0; j < U - L; j++) {
      float theta2 = map(spectrum[j + L], 0, 0.001, 0, 2 * PI);
      float x = sin(theta1) * cos(theta2);
      float gs = map(x, -1, 1, 0, 255); //map(spectrum[i + L] * spectrum[j + L], 0, 0.000001, 0, 255);
      fill(int(gs*40 % frameCount), int(gs), int(gs*2));
      rect(pad_x + cell_w * j, pad_y + cell_h * i, cell_w, cell_h);
    }
  }
}
