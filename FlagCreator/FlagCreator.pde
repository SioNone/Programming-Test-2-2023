// Student Name: Luke Doyle
// Student Number: C22775241

// Variables
PVector flagPosition;
Flag flag;
ArrayList<Flag> flags = new ArrayList<Flag>();

void setup() {
  size(1000, 1000);
  colorMode(HSB);
  generateFlags();
}

void draw() {
  background(255);
  for (int i = 0; i < flags.size(); i++) {
    Flag flag = flags.get(i);
    flag.update();
  }
}

void generateFlags() {
  for (int i = 0; i < 9; i++) {
    flagPosition = new PVector(random(0, width), random(0, height));
    Flag flag = new Flag(flagPosition, random(100, 250), random(50, 150));
    flags.add(flag);
  }
}
