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
    
    for (int i = 4; i > 1; i--) {
      pushMatrix();
      noStroke();
      fill(40, 255, 255 - (60 *  i));
      triangle(flagPosition.x, flagPosition.y, flagPosition.x + (flagWidth / 12 * i), flagPosition.y + flagHeight / 2, flagPosition.x, flagPosition.y + flagHeight);
      popMatrix();
    }
    
    pushMatrix();
    noFill();
    stroke(200, 255, 255);
    strokeWeight(2);
    circle(flagPosition.x + (flagWidth / 12), flagPosition.y + (flagHeight / 2), flagWidth / 12);
    popMatrix();
  }

  void update() {
    render();
  }
}
