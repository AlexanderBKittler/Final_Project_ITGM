class Hero {
  //**************************************
  color c;
  float x;
  float y;
  float w; 
  float h;
  float bottom = 950;
  //**************************************
  Hero(float tempX, float tempY, float tempW, float tempH, float tempB) { // paramaters for object
    //**************************************
    x = tempX; //translates paramaters to variables usable
    y = tempY;
    w = tempW;
    h = tempH;
    bottom = tempB;
  }
  //**************************************
  void display() {//display function
    stroke(10);
    fill(200);
    ellipse(x, y, w, h);
  } 

  //**************************************
  void moveRt() { //logic behind moving the objects right
    //x=mouseX;
    //y=mouseY;
    //x=x+10;
    if (x <= 900) {
      x=x+100;
    } else {
    }
    if (x == 50) {
      if (blocks.get(blocks.size()-1).set == true) {
        y=blocks.get(blocks.size()-1).y-100;
      } else {
        y=blocks.get(blocks.size()-2).y-100;
      }
    }
    if ( x == 150) {
      if (blocks2.get(blocks2.size()-1).set == true) {
        y=blocks2.get(blocks2.size()-1).y-100;
      } else {
        y=blocks2.get(blocks2.size()-2).y-100;
      }
    }

    if ( x == 250) {
      if (blocks3.get(blocks3.size()-1).set == true) {
        y=blocks3.get(blocks3.size()-1).y-100;
      } else {
        y=blocks3.get(blocks3.size()-2).y-100;
      }
    }

    if ( x == 350) {
      if (blocks4.get(blocks4.size()-1).set == true) {
        y=blocks4.get(blocks4.size()-1).y-100;
      } else {
        y=blocks4.get(blocks4.size()-2).y-100;
      }
    }

    if ( x == 450) {
      if (blocks5.get(blocks5.size()-1).set == true) {
        y=blocks5.get(blocks5.size()-1).y-100;
      } else {
        y=blocks5.get(blocks5.size()-2).y-100;
      }
    }

    if ( x == 550) {
      if (blocks6.get(blocks6.size()-1).set == true) {
        y=blocks6.get(blocks6.size()-1).y-100;
      } else {
        y=blocks6.get(blocks6.size()-2).y-100;
      }
    }

    if ( x == 650) {
      if (blocks7.get(blocks7.size()-1).set == true) {
        y=blocks7.get(blocks7.size()-1).y-100;
      } else {
        y=blocks7.get(blocks7.size()-2).y-100;
      }
    }

    if ( x == 750) {
      if (blocks8.get(blocks8.size()-1).set == true) {
        y=blocks8.get(blocks8.size()-1).y-100;
      } else {
        y=blocks8.get(blocks8.size()-2).y-100;
      }
    }

    if ( x == 850) {
      if (blocks9.get(blocks9.size()-1).set == true) {
        y=blocks9.get(blocks9.size()-1).y-100;
      } else {
        y=blocks9.get(blocks9.size()-2).y-100;
      }
    }

    if ( x == 950) {
      if (blocks0.get(blocks0.size()-1).set == true) {
        y=blocks0.get(blocks0.size()-1).y-100;
      } else {
        y=blocks0.get(blocks0.size()-2).y-100;
      }
    }
  }

  void moveLf() { //logic behind moving the objects left
    //x=mouseX;
    //y=mouseY;
    //x=x+10;
    if (x >= 100) {
      x=x-100;
      y=blocks.get(blocks.size()-1).y-100;
    } else {
    }
    if (x == 50) {
      if (blocks.get(blocks.size()-1).set == true) {
        y=blocks.get(blocks.size()-1).y-100;
      } else {
        y=blocks.get(blocks.size()-2).y-100;
      }
    }
    if ( x == 150) {
      if (blocks2.get(blocks2.size()-1).set == true) {
        y=blocks2.get(blocks2.size()-1).y-100;
      } else {
        y=blocks2.get(blocks2.size()-2).y-100;
      }
    }

    if ( x == 250) {
      if (blocks3.get(blocks3.size()-1).set == true) {
        y=blocks3.get(blocks3.size()-1).y-100;
      } else {
        y=blocks3.get(blocks3.size()-2).y-100;
      }
    }

    if ( x == 350) {
      if (blocks4.get(blocks4.size()-1).set == true) {
        y=blocks4.get(blocks4.size()-1).y-100;
      } else {
        y=blocks4.get(blocks4.size()-2).y-100;
      }
    }

    if ( x == 450) {
      if (blocks5.get(blocks5.size()-1).set == true) {
        y=blocks5.get(blocks5.size()-1).y-100;
      } else {
        y=blocks5.get(blocks5.size()-2).y-100;
      }
    }

    if ( x == 550) {
      if (blocks6.get(blocks6.size()-1).set == true) {
        y=blocks6.get(blocks6.size()-1).y-100;
      } else {
        y=blocks6.get(blocks6.size()-2).y-100;
      }
    }

    if ( x == 650) {
      if (blocks7.get(blocks7.size()-1).set == true) {
        y=blocks7.get(blocks7.size()-1).y-100;
      } else {
        y=blocks7.get(blocks7.size()-2).y-100;
      }
    }

    if ( x == 750) {
      if (blocks8.get(blocks8.size()-1).set == true) {
        y=blocks8.get(blocks8.size()-1).y-100;
      } else {
        y=blocks8.get(blocks8.size()-2).y-100;
      }
    }

    if ( x == 850) {
      if (blocks9.get(blocks9.size()-1).set == true) {
        y=blocks9.get(blocks9.size()-1).y-100;
      } else {
        y=blocks9.get(blocks9.size()-2).y-100;
      }
    }

    if ( x == 950) {
      if (blocks0.get(blocks0.size()-1).set == true) {
        y=blocks0.get(blocks0.size()-1).y-100;
      } else {
        y=blocks0.get(blocks0.size()-2).y-100;
      }
    }

   
  }

  void moveDn() { //logic behind moving objects down
    y=y+100;
  }
}
