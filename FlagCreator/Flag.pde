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
      rect(flagPosition.x, flagPosition.y + (flagHeight / 6 * i), flagWidth, flagHeight / 6);
    }
  }

  void update() {
    render();
  }
}
