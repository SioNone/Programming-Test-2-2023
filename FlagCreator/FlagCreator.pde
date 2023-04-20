// Student Name: Luke Doyle
// Student Number: C22775241

// Variables for flag position and movement
PVector flagPosition, moveSpeed;

// Variables for sin wave and flag size changing
float maxValue, interval, theta, x, y, xIncrement, yIncrement, widthValue, heightValue, warpSpeed;

// Variable for class
Flag flag;
ArrayList<Flag> flags = new ArrayList<Flag>();

void setup() {
  size(1000, 1000);
  colorMode(HSB);
  generateFlags();
  
  // Flag Movement, where x is move speed along the x axis and y is move speed along the y axis
  moveSpeed = new PVector(1, 0);
  
  // Sin Wave Variables
  maxValue = 200;
  interval = 300;
  warpSpeed = 0.02;
  widthValue = 10;
  heightValue = 6;
  xIncrement = (TWO_PI / interval) * widthValue;
  yIncrement = (TWO_PI / interval) * heightValue;
}

void draw() {
  background(255);
  
  // Speed at which flag warps (Gets bigger and smaller) the speed at which x and y change will be different
  theta += warpSpeed;
  float x = theta;
  float y = theta;
  
  for (int i = 0; i < flags.size(); i++) {
    // Get the flag object at position i
    Flag flag = flags.get(i);
    
    // Change the flag height and width using the absolute value of the sin of y and x multiplied by the maxValue (Amplitude)
    flag.flagHeight = abs(sin(y) * maxValue);
    flag.flagWidth = abs(sin(x) * maxValue);
    
    // Increment x and y
    y += yIncrement;
    x += xIncrement;
    
    // Move the flag by adding the moveSpeed vector to the flag position
    flag.flagPosition = flag.flagPosition.add(moveSpeed);
    
    // Call update
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
