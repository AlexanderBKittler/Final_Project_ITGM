ArrayList<Block> blocks, blocks2, blocks3, blocks4, blocks5, blocks6, blocks7, blocks8, blocks9, blocks0;

ArrayList<Hero> heros;

int objWidth = 100; //Starting Width
int objHeight = 100; // Starting Height
float objBottom = 1500;
float objGravity = 5;

int scale = 100;

int clear = 3; //number of clears usable to clear board

int location = 50;

int mined; //Number of blocks cleared

int rc;

int score = 0;


boolean alive = true; //game status

PImage background, fireball, box;


void setup() {
  
  //fullScreen();
  size ( 1000, 2000 );
  fireball = loadImage("fireball-trim.png");
  background = loadImage("background3.jpg");
  box = loadImage("block-trimX.png");
  fireball.resize(90, 90);
  box.resize(99, 99);
  background.resize(width, height);
  //*******************column arraylists
  blocks  = new ArrayList<Block>();
  blocks2 = new ArrayList<Block>();
  blocks3 = new ArrayList<Block>();
  blocks4 = new ArrayList<Block>();
  blocks5 = new ArrayList<Block>();
  blocks6 = new ArrayList<Block>();
  blocks7 = new ArrayList<Block>();
  blocks8 = new ArrayList<Block>();
  blocks9 = new ArrayList<Block>();
  blocks0 = new ArrayList<Block>();
  //**************************
  heros = new ArrayList<Hero>(); //player object
  //*****************adding initial objects
  heros.add(new Hero(location, 0, objWidth, objHeight, objBottom-(blocks.size()*scale)));
  blocks.add(new Block(50, 1490, objWidth, objHeight, objBottom-(blocks.size()*scale), objGravity));
  blocks2.add(new Block(150, 1490, objWidth, objHeight, objBottom-(blocks2.size()*scale), objGravity));
  blocks3.add(new Block(250, 1490, objWidth, objHeight, objBottom-(blocks3.size()*scale), objGravity));
  blocks4.add(new Block(350, 1490, objWidth, objHeight, objBottom-(blocks4.size()*scale), objGravity));
  blocks5.add(new Block(450, 1490, objWidth, objHeight, objBottom-(blocks5.size()*scale), objGravity));
  blocks6.add(new Block(550, 1490, objWidth, objHeight, objBottom-(blocks6.size()*scale), objGravity));
  blocks7.add(new Block(650, 1490, objWidth, objHeight, objBottom-(blocks7.size()*scale), objGravity));
  blocks8.add(new Block(750, 1490, objWidth, objHeight, objBottom-(blocks8.size()*scale), objGravity));
  blocks9.add(new Block(850, 1490, objWidth, objHeight, objBottom-(blocks9.size()*scale), objGravity));
  blocks0.add(new Block(950, 1490, objWidth, objHeight, objBottom-(blocks0.size()*scale), objGravity));
  //****************
}

void draw() {
  //scale(0.75); //viewing purpose in class
  
  background(230);
  image(background, 500, 500);
  //println(heros.get(0).x);
  //block spawn rate
  if (alive == true) {
    float a = random(40);
    int ax = round(a);
    if (ax == 1) {
      gridAdd();
    }

    gridDisplay();
    heroDisplay();
    gridUpdate();
  }

  //adjusts block speed and adds to clear acount
  if (mined == 20) {
    clear++;
    if (objGravity<15) {
      objGravity=objGravity+2;
    }
    mined=0;
    //println(objGravity);
  }

  textSize(75);
  fill(#C9E8FF);
  text(clear, 10, 100);
  text(score, 900, 100);

  if (alive == false) {
    gridDisplay();
    heroDisplay();
    textSize(100);
    fill(0, 102, 153);
    text("Game Over", 250, 500);
  }
}

void mousePressed() { //phone controls...
  if (mouseX < width/2 && mouseY < height*0.75) {
    for ( int i=0; i<heros.size(); i++) {

      heros.get(i).moveLfLaw();
    }
  }
  if (mouseX > width/2 && mouseY < height*0.75) {
    for ( int i=0; i<heros.size(); i++) {

      heros.get(i).moveRtLaw();
    }
  }
  if (mouseY < height*0.25) {
    if (clear > 0) {
      // clears arrays and reanitializes bottom layer of objects.
      blocks.clear(); 
      blocks2.clear(); 
      blocks3.clear(); 
      blocks4.clear(); 
      blocks5.clear(); 
      blocks6.clear(); 
      blocks7.clear(); 
      blocks8.clear(); 
      blocks9.clear(); 
      blocks0.clear(); 

      blocks.add(new Block(50, 1490, objWidth, objHeight, objBottom-(blocks.size()*scale), objGravity));
      blocks2.add(new Block(150, 1490, objWidth, objHeight, objBottom-(blocks2.size()*scale), objGravity));
      blocks3.add(new Block(250, 1490, objWidth, objHeight, objBottom-(blocks3.size()*scale), objGravity));
      blocks4.add(new Block(350, 1490, objWidth, objHeight, objBottom-(blocks4.size()*scale), objGravity));
      blocks5.add(new Block(450, 1490, objWidth, objHeight, objBottom-(blocks5.size()*scale), objGravity));
      blocks6.add(new Block(550, 1490, objWidth, objHeight, objBottom-(blocks6.size()*scale), objGravity));
      blocks7.add(new Block(650, 1490, objWidth, objHeight, objBottom-(blocks7.size()*scale), objGravity));
      blocks8.add(new Block(750, 1490, objWidth, objHeight, objBottom-(blocks8.size()*scale), objGravity));
      blocks9.add(new Block(850, 1490, objWidth, objHeight, objBottom-(blocks9.size()*scale), objGravity));
      blocks0.add(new Block(950, 1490, objWidth, objHeight, objBottom-(blocks0.size()*scale), objGravity));

      clear--; //adjusts clear usage
    } else {
    }
  }
  if (mouseY > height*0.75) { //deletes blocks below hero based on placement
    if (alive == true) {
      if (heros.get(0).x == 50) {
        if (blocks.size() > 0) {
          int i = blocks.size()-1;
          if (blocks.get(i).set == false && blocks.size() > 2) {
            //println(blocks.get(1).set);
            blocks.remove(i-1); 
            blocks.get(i-1).BottomDn();
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else if (blocks.size() > 0 && i > 0 && blocks.get(1).set == true) {
            blocks.remove(i);
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else if (blocks.size() > 0 && i == 2) {
            blocks.remove(i-1);
            blocks.get(i-1).BottomDn();
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else {
          }
        }
      }
      if (heros.get(0).x == 150) {
        if (blocks2.size() > 0) {
          int i = blocks2.size()-1;
          if (blocks2.get(i).set == false && blocks2.size() > 2) {
            //println(blocks2.get(1).set);
            blocks2.remove(i-1); 
            blocks2.get(i-1).BottomDn();
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else if (blocks2.size() > 0 && i > 0 && blocks2.get(1).set == true) {
            blocks2.remove(i);
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else if (blocks2.size() > 0 && i == 2) {
            blocks2.remove(i-1);
            blocks2.get(i-1).BottomDn();
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else {
          }
        }
      }
      if (heros.get(0).x == 250) {
        if (blocks3.size() > 0) {
          int i = blocks3.size()-1;
          if (blocks3.get(i).set == false && blocks3.size() > 2) {
            //println(blocks3.get(1).set);
            blocks3.remove(i-1); 
            blocks3.get(i-1).BottomDn();
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else if (blocks3.size() > 0 && i > 0 && blocks3.get(1).set == true) {
            blocks3.remove(i);
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else if (blocks3.size() > 0 && i == 2) {
            blocks3.remove(i-1);
            blocks3.get(i-1).BottomDn();
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else {
          }
        }
      }
      if (heros.get(0).x == 350) {
        if (blocks4.size() > 0) {
          int i = blocks4.size()-1;
          if (blocks4.get(i).set == false && blocks4.size() > 2) {
            //println(blocks4.get(1).set);
            blocks4.remove(i-1); 
            blocks4.get(i-1).BottomDn();
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else if (blocks4.size() > 0 && i > 0 && blocks4.get(1).set == true) {
            blocks4.remove(i);
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else if (blocks4.size() > 0 && i == 2) {
            blocks4.remove(i-1);
            blocks4.get(i-1).BottomDn();
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else {
          }
        }
      }
      if (heros.get(0).x == 450) {
        if (blocks5.size() > 0) {
          int i = blocks5.size()-1;
          if (blocks5.get(i).set == false && blocks5.size() > 2) {
            //println(blocks5.get(1).set);
            blocks5.remove(i-1); 
            blocks5.get(i-1).BottomDn();
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else if (blocks5.size() > 0 && i > 0 && blocks5.get(1).set == true) {
            blocks5.remove(i);
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else if (blocks5.size() > 0 && i == 2) {
            blocks5.remove(i-1);
            blocks5.get(i-1).BottomDn();
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else {
          }
        }
      }
      if (heros.get(0).x == 550) {
        if (blocks6.size() > 0) {
          int i = blocks6.size()-1;
          if (blocks6.get(i).set == false && blocks6.size() > 2) {
            //println(blocks6.get(1).set);
            blocks6.remove(i-1); 
            blocks6.get(i-1).BottomDn();
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else if (blocks6.size() > 0 && i > 0 && blocks6.get(1).set == true) {
            blocks6.remove(i);
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else if (blocks6.size() > 0 && i == 2) {
            blocks6.remove(i-1);
            blocks6.get(i-1).BottomDn();
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else {
          }
        }
      }
      if (heros.get(0).x == 650) {
        if (blocks7.size() > 0) {
          int i = blocks7.size()-1;
          if (blocks7.get(i).set == false && blocks7.size() > 2) {
            //println(blocks7.get(1).set);
            blocks7.remove(i-1); 
            blocks7.get(i-1).BottomDn();
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else if (blocks7.size() > 0 && i > 0 && blocks7.get(1).set == true) {
            blocks7.remove(i);
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else if (blocks7.size() > 0 && i == 2) {
            blocks7.remove(i-1);
            blocks7.get(i-1).BottomDn();
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else {
          }
        }
      }
      if (heros.get(0).x == 750) {
        if (blocks8.size() > 0) {
          int i = blocks8.size()-1;
          if (blocks8.get(i).set == false && blocks8.size() > 2) {
            //println(blocks8.get(1).set);
            blocks8.remove(i-1); 
            blocks8.get(i-1).BottomDn();
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else if (blocks8.size() > 0 && i > 0 && blocks8.get(1).set == true) {
            blocks8.remove(i);
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else if (blocks8.size() > 0 && i == 2) {
            blocks8.remove(i-1);
            blocks8.get(i-1).BottomDn();
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else {
          }
        }
      }
      if (heros.get(0).x == 850) {
        if (blocks9.size() > 0) {
          int i = blocks9.size()-1;
          if (blocks9.get(i).set == false && blocks9.size() > 2) {
            //println(blocks9.get(1).set);
            blocks9.remove(i-1); 
            blocks9.get(i-1).BottomDn();
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else if (blocks9.size() > 0 && i > 0 && blocks9.get(1).set == true) {
            blocks9.remove(i);
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else if (blocks9.size() > 0 && i == 2) {
            blocks9.remove(i-1);
            blocks9.get(i-1).BottomDn();
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else {
          }
        }
      }
      if (heros.get(0).x == 950) {
        if (blocks0.size() > 0) {
          int i = blocks0.size()-1;
          if (blocks0.get(i).set == false && blocks0.size() > 2) {
            //println(blocks0.get(1).set);
            blocks0.remove(i-1); 
            blocks0.get(i-1).BottomDn();
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else if (blocks0.size() > 0 && i > 0 && blocks0.get(1).set == true) {
            blocks0.remove(i);
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else if (blocks0.size() > 0 && i == 2) {
            blocks0.remove(i-1);
            blocks0.get(i-1).BottomDn();
            heros.get(0).moveDn();
            mined++;
            score = score + (10 * i);
          } else {
          }
        }
      }
    }
  }
}


void keyPressed() {


  if (key == TAB) {
    if (clear > 0) {
      // clears arrays and reanitializes bottom layer of objects.
      blocks.clear(); 
      blocks2.clear(); 
      blocks3.clear(); 
      blocks4.clear(); 
      blocks5.clear(); 
      blocks6.clear(); 
      blocks7.clear(); 
      blocks8.clear(); 
      blocks9.clear(); 
      blocks0.clear(); 

      blocks.add(new Block(50, 1490, objWidth, objHeight, objBottom-(blocks.size()*scale), objGravity));
      blocks2.add(new Block(150, 1490, objWidth, objHeight, objBottom-(blocks2.size()*scale), objGravity));
      blocks3.add(new Block(250, 1490, objWidth, objHeight, objBottom-(blocks3.size()*scale), objGravity));
      blocks4.add(new Block(350, 1490, objWidth, objHeight, objBottom-(blocks4.size()*scale), objGravity));
      blocks5.add(new Block(450, 1490, objWidth, objHeight, objBottom-(blocks5.size()*scale), objGravity));
      blocks6.add(new Block(550, 1490, objWidth, objHeight, objBottom-(blocks6.size()*scale), objGravity));
      blocks7.add(new Block(650, 1490, objWidth, objHeight, objBottom-(blocks7.size()*scale), objGravity));
      blocks8.add(new Block(750, 1490, objWidth, objHeight, objBottom-(blocks8.size()*scale), objGravity));
      blocks9.add(new Block(850, 1490, objWidth, objHeight, objBottom-(blocks9.size()*scale), objGravity));
      blocks0.add(new Block(950, 1490, objWidth, objHeight, objBottom-(blocks0.size()*scale), objGravity));

      clear--; //adjusts clear usage
    } else {
    }
  }
  if (key == CODED) { //moves hero
    if (keyCode == RIGHT) {
      for ( int i=0; i<heros.size(); i++) {

        heros.get(i).moveRtLaw();
      }
    }
    if (keyCode == LEFT) { //moves hero
      for ( int i=0; i<heros.size(); i++) {

        heros.get(i).moveLfLaw();
      }
    }
    if (keyCode == DOWN) { //deletes blocks below hero based on placement
      if (alive == true) {
        if (heros.get(0).x == 50) {
          if (blocks.size() > 0) {
            int i = blocks.size()-1;
            if (blocks.get(i).set == false && blocks.size() > 2) {
              //println(blocks.get(1).set);
              blocks.remove(i-1); 
              blocks.get(i-1).BottomDn();
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else if (blocks.size() > 0 && i > 0 && blocks.get(1).set == true) {
              blocks.remove(i);
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else if (blocks.size() > 0 && i == 2) {
              blocks.remove(i-1);
              blocks.get(i-1).BottomDn();
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else {
            }
          }
        }
        if (heros.get(0).x == 150) {
          if (blocks2.size() > 0) {
            int i = blocks2.size()-1;
            if (blocks2.get(i).set == false && blocks2.size() > 2) {
              //println(blocks2.get(1).set);
              blocks2.remove(i-1); 
              blocks2.get(i-1).BottomDn();
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else if (blocks2.size() > 0 && i > 0 && blocks2.get(1).set == true) {
              blocks2.remove(i);
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else if (blocks2.size() > 0 && i == 2) {
              blocks2.remove(i-1);
              blocks2.get(i-1).BottomDn();
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else {
            }
          }
        }
        if (heros.get(0).x == 250) {
          if (blocks3.size() > 0) {
            int i = blocks3.size()-1;
            if (blocks3.get(i).set == false && blocks3.size() > 2) {
              //println(blocks3.get(1).set);
              blocks3.remove(i-1); 
              blocks3.get(i-1).BottomDn();
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else if (blocks3.size() > 0 && i > 0 && blocks3.get(1).set == true) {
              blocks3.remove(i);
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else if (blocks3.size() > 0 && i == 2) {
              blocks3.remove(i-1);
              blocks3.get(i-1).BottomDn();
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else {
            }
          }
        }
        if (heros.get(0).x == 350) {
          if (blocks4.size() > 0) {
            int i = blocks4.size()-1;
            if (blocks4.get(i).set == false && blocks4.size() > 2) {
              //println(blocks4.get(1).set);
              blocks4.remove(i-1); 
              blocks4.get(i-1).BottomDn();
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else if (blocks4.size() > 0 && i > 0 && blocks4.get(1).set == true) {
              blocks4.remove(i);
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else if (blocks4.size() > 0 && i == 2) {
              blocks4.remove(i-1);
              blocks4.get(i-1).BottomDn();
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else {
            }
          }
        }
        if (heros.get(0).x == 450) {
          if (blocks5.size() > 0) {
            int i = blocks5.size()-1;
            if (blocks5.get(i).set == false && blocks5.size() > 2) {
              //println(blocks5.get(1).set);
              blocks5.remove(i-1); 
              blocks5.get(i-1).BottomDn();
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else if (blocks5.size() > 0 && i > 0 && blocks5.get(1).set == true) {
              blocks5.remove(i);
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else if (blocks5.size() > 0 && i == 2) {
              blocks5.remove(i-1);
              blocks5.get(i-1).BottomDn();
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else {
            }
          }
        }
        if (heros.get(0).x == 550) {
          if (blocks6.size() > 0) {
            int i = blocks6.size()-1;
            if (blocks6.get(i).set == false && blocks6.size() > 2) {
              //println(blocks6.get(1).set);
              blocks6.remove(i-1); 
              blocks6.get(i-1).BottomDn();
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else if (blocks6.size() > 0 && i > 0 && blocks6.get(1).set == true) {
              blocks6.remove(i);
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else if (blocks6.size() > 0 && i == 2) {
              blocks6.remove(i-1);
              blocks6.get(i-1).BottomDn();
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else {
            }
          }
        }
        if (heros.get(0).x == 650) {
          if (blocks7.size() > 0) {
            int i = blocks7.size()-1;
            if (blocks7.get(i).set == false && blocks7.size() > 2) {
              //println(blocks7.get(1).set);
              blocks7.remove(i-1); 
              blocks7.get(i-1).BottomDn();
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else if (blocks7.size() > 0 && i > 0 && blocks7.get(1).set == true) {
              blocks7.remove(i);
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else if (blocks7.size() > 0 && i == 2) {
              blocks7.remove(i-1);
              blocks7.get(i-1).BottomDn();
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else {
            }
          }
        }
        if (heros.get(0).x == 750) {
          if (blocks8.size() > 0) {
            int i = blocks8.size()-1;
            if (blocks8.get(i).set == false && blocks8.size() > 2) {
              //println(blocks8.get(1).set);
              blocks8.remove(i-1); 
              blocks8.get(i-1).BottomDn();
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else if (blocks8.size() > 0 && i > 0 && blocks8.get(1).set == true) {
              blocks8.remove(i);
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else if (blocks8.size() > 0 && i == 2) {
              blocks8.remove(i-1);
              blocks8.get(i-1).BottomDn();
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else {
            }
          }
        }
        if (heros.get(0).x == 850) {
          if (blocks9.size() > 0) {
            int i = blocks9.size()-1;
            if (blocks9.get(i).set == false && blocks9.size() > 2) {
              //println(blocks9.get(1).set);
              blocks9.remove(i-1); 
              blocks9.get(i-1).BottomDn();
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else if (blocks9.size() > 0 && i > 0 && blocks9.get(1).set == true) {
              blocks9.remove(i);
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else if (blocks9.size() > 0 && i == 2) {
              blocks9.remove(i-1);
              blocks9.get(i-1).BottomDn();
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else {
            }
          }
        }
        if (heros.get(0).x == 950) {
          if (blocks0.size() > 0) {
            int i = blocks0.size()-1;
            if (blocks0.get(i).set == false && blocks0.size() > 2) {
              //println(blocks0.get(1).set);
              blocks0.remove(i-1); 
              blocks0.get(i-1).BottomDn();
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else if (blocks0.size() > 0 && i > 0 && blocks0.get(1).set == true) {
              blocks0.remove(i);
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else if (blocks0.size() > 0 && i == 2) {
              blocks0.remove(i-1);
              blocks0.get(i-1).BottomDn();
              heros.get(0).moveDn();
              mined++;
              score = score + (10 * i);
            } else {
            }
          }
        }
      }
    }
  }
}

void heroDisplay() { //displays hero
  for ( int i=0; i<heros.size(); i++) {
    Hero hero = heros.get(i);
    hero.display();
  }
}

void gridAdd() { //spawns blocks based on numbers generated
  float r = random(10);
  int rx = round(r);

  //println(rc);

  if (rx == 1) {
    for (int i = blocks.size()-1; i >= 0; i--) {
      if (blocks.get(blocks.size()-1).set == false) {
      } else {
        blocks.add(new Block(50, 0, objWidth, objHeight, objBottom-(blocks.size()*scale), objGravity));
      }
    }
  }
  if (rx == 2) {
    for (int i = blocks2.size()-1; i >= 0; i--) {
      if (blocks2.get(blocks2.size()-1).set == false) {
      } else {
        blocks2.add(new Block(150, 0, objWidth, objHeight, objBottom-(blocks2.size()*scale), objGravity));
      }
    }
  }
  if (rx == 3) {
    for (int i = blocks3.size()-1; i >= 0; i--) {
      if (blocks3.get(blocks3.size()-1).set == false) {
      } else {
        blocks3.add(new Block(250, 0, objWidth, objHeight, objBottom-(blocks3.size()*scale), objGravity));
      }
    }
  }
  if (rx == 4) {
    for (int i = blocks4.size()-1; i >= 0; i--) {
      if (blocks4.get(blocks4.size()-1).set == false) {
      } else {
        blocks4.add(new Block(350, 0, objWidth, objHeight, objBottom-(blocks4.size()*scale), objGravity));
      }
    }
  }
  if (rx == 5) {
    for (int i = blocks5.size()-1; i >= 0; i--) {
      if (blocks5.get(blocks5.size()-1).set == false) {
      } else {
        blocks5.add(new Block(450, 0, objWidth, objHeight, objBottom-(blocks5.size()*scale), objGravity));
      }
    }
  }
  if (rx == 6) {
    for (int i = blocks6.size()-1; i >= 0; i--) {
      if (blocks6.get(blocks6.size()-1).set == false) {
      } else {
        blocks6.add(new Block(550, 0, objWidth, objHeight, objBottom-(blocks6.size()*scale), objGravity));
      }
    }
  }
  if (rx == 7) {
    for (int i = blocks7.size()-1; i >= 0; i--) {
      if (blocks7.get(blocks7.size()-1).set == false) {
      } else {
        blocks7.add(new Block(650, 0, objWidth, objHeight, objBottom-(blocks7.size()*scale), objGravity));
      }
    }
  }
  if (rx == 8) {
    for (int i = blocks8.size()-1; i >= 0; i--) {
      if (blocks8.get(blocks8.size()-1).set == false) {
      } else {
        blocks8.add(new Block(750, 0, objWidth, objHeight, objBottom-(blocks8.size()*scale), objGravity));
      }
    }
  }
  if (rx == 9) {
    for (int i = blocks9.size()-1; i >= 0; i--) {
      if (blocks9.get(blocks9.size()-1).set == false) {
      } else {
        blocks9.add(new Block(850, 0, objWidth, objHeight, objBottom-(blocks9.size()*scale), objGravity));
      }
    }
  }
  if (rx == 0) {
    for (int i = blocks0.size()-1; i >= 0; i--) {
      if (blocks0.get(blocks0.size()-1).set == false) {
      } else {
        blocks0.add(new Block(950, 0, objWidth, objHeight, objBottom-(blocks0.size()*scale), objGravity));
      }
    }
  }
}


void gridDisplay() { // displays block arrays

  for ( int i=0; i<blocks.size(); i++) {
    Block block = blocks.get(i);
    block.display();
  }

  for ( int i=0; i<blocks2.size(); i++) {
    Block block2 = blocks2.get(i);
    block2.display();
  }
  for ( int i=0; i<blocks3.size(); i++) {
    Block block3 = blocks3.get(i);
    block3.display();
  }
  for ( int i=0; i<blocks4.size(); i++) {
    Block block4 = blocks4.get(i);
    block4.display();
  }
  for ( int i=0; i<blocks5.size(); i++) {
    Block block5 = blocks5.get(i);
    block5.display();
  }
  for ( int i=0; i<blocks6.size(); i++) {
    Block block6 = blocks6.get(i);
    block6.display();
  }
  for ( int i=0; i<blocks7.size(); i++) {
    Block block7 = blocks7.get(i);
    block7.display();
  }
  for ( int i=0; i<blocks8.size(); i++) {
    Block block8 = blocks8.get(i);
    block8.display();
  }
  for ( int i=0; i<blocks9.size(); i++) {
    Block block9 = blocks9.get(i);
    block9.display();
  }
  for ( int i=0; i<blocks0.size(); i++) {
    Block block0 = blocks0.get(i);
    block0.display();
  }
}




void gridUpdate() { //updates the blocks movement

  for ( int i=0; i<blocks.size(); i++) {

    blocks.get(i).move();
  }

  for ( int i=0; i<blocks2.size(); i++) {

    blocks2.get(i).move();
  }
  for ( int i=0; i<blocks3.size(); i++) {

    blocks3.get(i).move();
  }
  for ( int i=0; i<blocks4.size(); i++) {

    blocks4.get(i).move();
  }
  for ( int i=0; i<blocks5.size(); i++) {

    blocks5.get(i).move();
  }
  for ( int i=0; i<blocks6.size(); i++) {

    blocks6.get(i).move();
  }
  for ( int i=0; i<blocks7.size(); i++) {

    blocks7.get(i).move();
  }
  for ( int i=0; i<blocks8.size(); i++) {

    blocks8.get(i).move();
  }
  for ( int i=0; i<blocks9.size(); i++) {

    blocks9.get(i).move();
  }
  for ( int i=0; i<blocks0.size(); i++) {

    blocks0.get(i).move();
  }
}
