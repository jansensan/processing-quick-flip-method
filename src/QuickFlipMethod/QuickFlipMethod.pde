int PHOTO_WIDTH = 640;
int PHOTO_HEIGHT = 360;


PImage original;
PImage flipped;


void setup() {
  // set window width to fit two images
  size(1280, 360);

  // load original image
  original = loadImage("mtl-downtown.jpg");
  
  // init flipped image
  flipped = new PImage(PHOTO_WIDTH, PHOTO_HEIGHT);
}

void draw() {
  // set black background
  background(0);
  
  // draw original image
  image(original, 0, 0);

  // loop through pixels of original image
  for (int i = 0; i < PHOTO_HEIGHT; i++) {
    for (int j = 0; j < PHOTO_WIDTH; j++) {
      // set pixels in flipped image
      int newX = (PHOTO_WIDTH - 1) - j;
      flipped.set(newX, i, original.get(j, i));
    }
  }
  
  // draw flipped image
  image(flipped, PHOTO_WIDTH, 0);
}