class Block extends Object {
  //**************************************
  Block(float tempX, float tempY, float tempW, float tempH, float tempB, float tempG) {// paramaters for object
    //**************************************
    x = tempX; //translates paramaters to variables usable
    y = tempY;
    w = tempW;
    h = tempH;
    g = tempG;
    bottom = tempB;
  }
  //**************************************
  void display() {//display function
    imageMode(CENTER);
    stroke(10);
    fill(200);
    rectMode(CENTER);
    //rect(x, y, w, h);
    image(box, x, y);
  }
} 
