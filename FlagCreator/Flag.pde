class Flag {
  PVector flagPosition;
  float flagWidth, flagHeight;
  
  Flag(PVector flagPosition, float flagWidth, float flagHeight) {
    this.flagPosition = flagPosition; 
    this.flagWidth = flagWidth;
    this.flagHeight = flagHeight;
  }
  
  void render() {
    for (int i = 0; i < 6; i++) {
      pushMatrix();
      noStroke();
      fill(0 + (40 * i), 255, 255);
      rect(flagPosition.x, flagPosition.y + (flagHeight / 6 * i), flagWidth, flagHeight / 6);
      popMatrix();
    }
    
    for (int i = 4; i > 0; i--) {
      pushMatrix();
      noStroke();
      fill(40, 255, 255 - (60 *  i));
      
      if (i == 2) {
        fill(350, 100, 255);
      } else if (i == 1) {
        fill(40, 200, 255);
      }
      
      triangle(flagPosition.x, flagPosition.y + (flagHeight / 10 * (abs(4 - i))), flagPosition.x + (flagWidth / 7 * i), flagPosition.y + flagHeight / 2, flagPosition.x, flagPosition.y + flagHeight - (flagHeight / 10 * (abs(4 - i))));
      popMatrix();
    }
    
    pushMatrix();
    noFill();
    stroke(200, 255, 255);
    strokeWeight(2);
    circle(flagPosition.x + (flagWidth / 14), flagPosition.y + (flagHeight / 2), min(flagWidth, flagHeight) / 12);
    popMatrix();
  }

  void update() {
    
    // If flag moves off screen move it to the other side
    if (flagPosition.x > width) {
      flagPosition.x = 0 - flagWidth;
    }
    
    render();
  }
}
