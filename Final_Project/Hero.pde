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
    imageMode(CENTER);
    stroke(0);
    fill(200);
    //ellipse(x, y, w, h);
    image(fireball, x, y+5);
  } 

  //**************************************
  void moveRtLaw() {
    if (x <= 900) {
      if (x == 850) {
        if (blocks9.get(blocks9.size()-1).set == true) {
          if (blocks0.get(blocks0.size()-1).set == true) {
            if (blocks9.size() > blocks0.size()-2) {
              x=x+100;
              moveRtY();
            }
          }
          if (blocks0.get(blocks0.size()-1).set == false) {
            if (blocks9.size() > blocks0.size()-3) {
              x=x+100;
              moveRtY();
            }
          }
        }
        if (blocks9.get(blocks9.size()-1).set == false) {
          if (blocks0.get(blocks0.size()-1).set == true) {
            if (blocks9.size() > blocks0.size()-1) {
              x=x+100;
              moveRtY();
            }
          }
          if (blocks0.get(blocks0.size()-1).set == false) {
            if (blocks9.size() > blocks0.size()-2) {
              x=x+100;
              moveRtY();
            }
          }
        }
      }
      if (x == 750) {
        if (blocks8.get(blocks8.size()-1).set == true) {
          if (blocks9.get(blocks9.size()-1).set == true) {
            if (blocks8.size() > blocks9.size()-2) {
              x=x+100;
              moveRtY();
            }
          }
          if (blocks9.get(blocks9.size()-1).set == false) {
            if (blocks8.size() > blocks9.size()-3) {
              x=x+100;
              moveRtY();
            }
          }
        }
        if (blocks8.get(blocks8.size()-1).set == false) {
          if (blocks9.get(blocks9.size()-1).set == true) {
            if (blocks8.size() > blocks9.size()-1) {
              x=x+100;
              moveRtY();
            }
          }
          if (blocks9.get(blocks9.size()-1).set == false) {
            if (blocks8.size() > blocks9.size()-2) {
              x=x+100;
              moveRtY();
            }
          }
        }
      }
      if (x == 650) {
        if (blocks7.get(blocks7.size()-1).set == true) {
          if (blocks8.get(blocks8.size()-1).set == true) {
            if (blocks7.size() > blocks8.size()-2) {
              x=x+100;
              moveRtY();
            }
          }
          if (blocks8.get(blocks8.size()-1).set == false) {
            if (blocks7.size() > blocks8.size()-3) {
              x=x+100;
              moveRtY();
            }
          }
        }
        if (blocks7.get(blocks7.size()-1).set == false) {
          if (blocks8.get(blocks8.size()-1).set == true) {
            if (blocks7.size() > blocks8.size()-1) {
              x=x+100;
              moveRtY();
            }
          }
          if (blocks8.get(blocks8.size()-1).set == false) {
            if (blocks7.size() > blocks8.size()-2) {
              x=x+100;
              moveRtY();
            }
          }
        }
      }
      if (x == 550) {
        if (blocks6.get(blocks6.size()-1).set == true) {
          if (blocks7.get(blocks7.size()-1).set == true) {
            if (blocks6.size() > blocks7.size()-2) {
              x=x+100;
              moveRtY();
            }
          }
          if (blocks7.get(blocks7.size()-1).set == false) {
            if (blocks6.size() > blocks7.size()-3) {
              x=x+100;
              moveRtY();
            }
          }
        }
        if (blocks6.get(blocks6.size()-1).set == false) {
          if (blocks7.get(blocks7.size()-1).set == true) {
            if (blocks6.size() > blocks7.size()-1) {
              x=x+100;
              moveRtY();
            }
          }
          if (blocks7.get(blocks7.size()-1).set == false) {
            if (blocks6.size() > blocks7.size()-2) {
              x=x+100;
              moveRtY();
            }
          }
        }
      }
      if (x == 450) {
        if (blocks5.get(blocks5.size()-1).set == true) {
          if (blocks6.get(blocks6.size()-1).set == true) {
            if (blocks5.size() > blocks6.size()-2) {
              x=x+100;
              moveRtY();
            }
          }
          if (blocks6.get(blocks6.size()-1).set == false) {
            if (blocks5.size() > blocks6.size()-3) {
              x=x+100;
              moveRtY();
            }
          }
        }
        if (blocks5.get(blocks5.size()-1).set == false) {
          if (blocks6.get(blocks6.size()-1).set == true) {
            if (blocks5.size() > blocks6.size()-1) {
              x=x+100;
              moveRtY();
            }
          }
          if (blocks6.get(blocks6.size()-1).set == false) {
            if (blocks5.size() > blocks6.size()-2) {
              x=x+100;
              moveRtY();
            }
          }
        }
      }
      if (x == 350) {
        if (blocks4.get(blocks4.size()-1).set == true) {
          if (blocks5.get(blocks5.size()-1).set == true) {
            if (blocks4.size() > blocks5.size()-2) {
              x=x+100;
              moveRtY();
            }
          }
          if (blocks5.get(blocks5.size()-1).set == false) {
            if (blocks4.size() > blocks5.size()-3) {
              x=x+100;
              moveRtY();
            }
          }
        }
        if (blocks4.get(blocks4.size()-1).set == false) {
          if (blocks5.get(blocks5.size()-1).set == true) {
            if (blocks4.size() > blocks5.size()-1) {
              x=x+100;
              moveRtY();
            }
          }
          if (blocks5.get(blocks5.size()-1).set == false) {
            if (blocks4.size() > blocks5.size()-2) {
              x=x+100;
              moveRtY();
            }
          }
        }
      }
      if (x == 250) {
        if (blocks3.get(blocks3.size()-1).set == true) {
          if (blocks4.get(blocks4.size()-1).set == true) {
            if (blocks3.size() > blocks4.size()-2) {
              x=x+100;
              moveRtY();
            }
          }
          if (blocks4.get(blocks4.size()-1).set == false) {
            if (blocks3.size() > blocks4.size()-3) {
              x=x+100;
              moveRtY();
            }
          }
        }
        if (blocks3.get(blocks3.size()-1).set == false) {
          if (blocks4.get(blocks4.size()-1).set == true) {
            if (blocks3.size() > blocks4.size()-1) {
              x=x+100;
              moveRtY();
            }
          }
          if (blocks4.get(blocks4.size()-1).set == false) {
            if (blocks3.size() > blocks4.size()-2) {
              x=x+100;
              moveRtY();
            }
          }
        }
      }
      if (x == 150) {
        if (blocks2.get(blocks2.size()-1).set == true) {
          if (blocks3.get(blocks3.size()-1).set == true) {
            if (blocks2.size() > blocks3.size()-2) {
              x=x+100;
              moveRtY();
            }
          }
          if (blocks3.get(blocks3.size()-1).set == false) {
            if (blocks2.size() > blocks3.size()-3) {
              x=x+100;
              moveRtY();
            }
          }
        }
        if (blocks2.get(blocks2.size()-1).set == false) {
          if (blocks3.get(blocks3.size()-1).set == true) {
            if (blocks2.size() > blocks3.size()-1) {
              x=x+100;
              moveRtY();
            }
          }
          if (blocks3.get(blocks3.size()-1).set == false) {
            if (blocks2.size() > blocks3.size()-2) {
              x=x+100;
              moveRtY();
            }
          }
        }
      }
      if (x == 50) {
        if (blocks.get(blocks.size()-1).set == true) {
          if (blocks2.get(blocks2.size()-1).set == true) {
            if (blocks.size() > blocks2.size()-2) {
              x=x+100;
              moveRtY();
            }
          }
          if (blocks2.get(blocks2.size()-1).set == false) {
            if (blocks.size() > blocks2.size()-3) {
              x=x+100;
              moveRtY();
            }
          }
        }
        if (blocks.get(blocks.size()-1).set == false) {
          if (blocks2.get(blocks2.size()-1).set == true) {
            if (blocks.size() > blocks2.size()-1) {
              x=x+100;
              moveRtY();
            }
          }
          if (blocks2.get(blocks2.size()-1).set == false) {
            if (blocks.size() > blocks2.size()-2) {
              x=x+100;
              moveRtY();
            }
          }
        }
      }
    } else {
    }
  }
  //**************************************
  void moveRtY() { //logic behind moving the objects right
    //x=mouseX;
    //y=mouseY;
    //x=x+10;

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
  void moveLfLaw() {
    if (x >= 100) {
      //x=x-100;
      if (x == 150) {
        if (blocks2.get(blocks2.size()-1).set == true) {
          if (blocks.get(blocks.size()-1).set == true) {
            if (blocks2.size() > blocks.size()-2) {
              x=x-100;
              moveLfY();
            }
          }
          if (blocks.get(blocks.size()-1).set == false) {
            if (blocks2.size() > blocks.size()-3) {
              x=x-100;
              moveLfY();
            }
          }
        }
        if (blocks2.get(blocks2.size()-1).set == false) {
          if (blocks.get(blocks.size()-1).set == true) {
            if (blocks2.size() > blocks.size()-1) {
              x=x-100;
              moveLfY();
            }
          }
          if (blocks.get(blocks.size()-1).set == false) {
            if (blocks2.size() > blocks.size()-2) {
              x=x-100;
              moveLfY();
            }
          }
        }
      }

      //x=x-100;
      if (x == 250) {
        if (blocks3.get(blocks3.size()-1).set == true) {
          if (blocks2.get(blocks2.size()-1).set == true) {
            if (blocks3.size() > blocks2.size()-2) {
              x=x-100;
              moveLfY();
            }
          }
          if (blocks2.get(blocks2.size()-1).set == false) {
            if (blocks3.size() > blocks2.size()-3) {
              x=x-100;
              moveLfY();
            }
          }
        }
        if (blocks3.get(blocks3.size()-1).set == false) {
          if (blocks2.get(blocks2.size()-1).set == true) {
            if (blocks3.size() > blocks2.size()-1) {
              x=x-100;
              moveLfY();
            }
          }
          if (blocks2.get(blocks2.size()-1).set == false) {
            if (blocks3.size() > blocks2.size()-2) {
              x=x-100;
              moveLfY();
            }
          }
        }
      }
      if (x == 350) {
        if (blocks4.get(blocks4.size()-1).set == true) {
          if (blocks3.get(blocks3.size()-1).set == true) {
            if (blocks4.size() > blocks3.size()-2) {
              x=x-100;
              moveLfY();
            }
          }
          if (blocks3.get(blocks3.size()-1).set == false) {
            if (blocks4.size() > blocks3.size()-3) {
              x=x-100;
              moveLfY();
            }
          }
        }
        if (blocks4.get(blocks4.size()-1).set == false) {
          if (blocks3.get(blocks3.size()-1).set == true) {
            if (blocks4.size() > blocks3.size()-1) {
              x=x-100;
              moveLfY();
            }
          }
          if (blocks3.get(blocks3.size()-1).set == false) {
            if (blocks4.size() > blocks3.size()-2) {
              x=x-100;
              moveLfY();
            }
          }
        }
      }
      if (x == 450) {
        if (blocks5.get(blocks5.size()-1).set == true) {
          if (blocks4.get(blocks4.size()-1).set == true) {
            if (blocks5.size() > blocks4.size()-2) {
              x=x-100;
              moveLfY();
            }
          }
          if (blocks4.get(blocks4.size()-1).set == false) {
            if (blocks5.size() > blocks4.size()-3) {
              x=x-100;
              moveLfY();
            }
          }
        }
        if (blocks5.get(blocks5.size()-1).set == false) {
          if (blocks4.get(blocks4.size()-1).set == true) {
            if (blocks5.size() > blocks4.size()-1) {
              x=x-100;
              moveLfY();
            }
          }
          if (blocks4.get(blocks4.size()-1).set == false) {
            if (blocks5.size() > blocks4.size()-2) {
              x=x-100;
              moveLfY();
            }
          }
        }
      }
      if (x == 550) {
        if (blocks6.get(blocks6.size()-1).set == true) {
          if (blocks5.get(blocks5.size()-1).set == true) {
            if (blocks6.size() > blocks5.size()-2) {
              x=x-100;
              moveLfY();
            }
          }
          if (blocks5.get(blocks5.size()-1).set == false) {
            if (blocks6.size() > blocks5.size()-3) {
              x=x-100;
              moveLfY();
            }
          }
        }
        if (blocks6.get(blocks6.size()-1).set == false) {
          if (blocks5.get(blocks5.size()-1).set == true) {
            if (blocks6.size() > blocks5.size()-1) {
              x=x-100;
              moveLfY();
            }
          }
          if (blocks5.get(blocks5.size()-1).set == false) {
            if (blocks6.size() > blocks5.size()-2) {
              x=x-100;
              moveLfY();
            }
          }
        }
      }
      if (x == 650) {
        if (blocks7.get(blocks7.size()-1).set == true) {
          if (blocks6.get(blocks6.size()-1).set == true) {
            if (blocks7.size() > blocks6.size()-2) {
              x=x-100;
              moveLfY();
            }
          }
          if (blocks6.get(blocks6.size()-1).set == false) {
            if (blocks7.size() > blocks6.size()-3) {
              x=x-100;
              moveLfY();
            }
          }
        }
        if (blocks7.get(blocks7.size()-1).set == false) {
          if (blocks6.get(blocks6.size()-1).set == true) {
            if (blocks7.size() > blocks6.size()-1) {
              x=x-100;
              moveLfY();
            }
          }
          if (blocks6.get(blocks6.size()-1).set == false) {
            if (blocks7.size() > blocks6.size()-2) {
              x=x-100;
              moveLfY();
            }
          }
        }
      }
      if (x == 750) {
        if (blocks8.get(blocks8.size()-1).set == true) {
          if (blocks7.get(blocks7.size()-1).set == true) {
            if (blocks8.size() > blocks7.size()-2) {
              x=x-100;
              moveLfY();
            }
          }
          if (blocks7.get(blocks7.size()-1).set == false) {
            if (blocks8.size() > blocks7.size()-3) {
              x=x-100;
              moveLfY();
            }
          }
        }
        if (blocks8.get(blocks8.size()-1).set == false) {
          if (blocks7.get(blocks7.size()-1).set == true) {
            if (blocks8.size() > blocks7.size()-1) {
              x=x-100;
              moveLfY();
            }
          }
          if (blocks7.get(blocks7.size()-1).set == false) {
            if (blocks8.size() > blocks7.size()-2) {
              x=x-100;
              moveLfY();
            }
          }
        }
      }
      if (x == 850) {
        if (blocks9.get(blocks9.size()-1).set == true) {
          if (blocks8.get(blocks8.size()-1).set == true) {
            if (blocks9.size() > blocks8.size()-2) {
              x=x-100;
              moveLfY();
            }
          }
          if (blocks8.get(blocks8.size()-1).set == false) {
            if (blocks9.size() > blocks8.size()-3) {
              x=x-100;
              moveLfY();
            }
          }
        }
        if (blocks9.get(blocks9.size()-1).set == false) {
          if (blocks8.get(blocks8.size()-1).set == true) {
            if (blocks9.size() > blocks8.size()-1) {
              x=x-100;
              moveLfY();
            }
          }
          if (blocks8.get(blocks8.size()-1).set == false) {
            if (blocks9.size() > blocks8.size()-2) {
              x=x-100;
              moveLfY();
            }
          }
        }
      }
      if (x == 950) {
        if (blocks0.get(blocks0.size()-1).set == true) {
          if (blocks9.get(blocks9.size()-1).set == true) {
            if (blocks0.size() > blocks9.size()-2) {
              x=x-100;
              moveLfY();
            }
          }
          if (blocks9.get(blocks9.size()-1).set == false) {
            if (blocks0.size() > blocks9.size()-3) {
              x=x-100;
              moveLfY();
            }
          }
        }
        if (blocks0.get(blocks0.size()-1).set == false) {
          if (blocks9.get(blocks9.size()-1).set == true) {
            if (blocks0.size() > blocks9.size()-1) {
              x=x-100;
              moveLfY();
            }
          }
          if (blocks9.get(blocks9.size()-1).set == false) {
            if (blocks0.size() > blocks9.size()-2) {
              x=x-100;
              moveLfY();
            }
          }
        }
      }
    }
  }
  void moveLfY() { //logic behind moving the objects left
    //x=mouseX;
    //y=mouseY;
    //x=x+10;
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
