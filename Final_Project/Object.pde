class Object {
  color c;
  float x;
  float y;
  float w; 
  float h;
  float g;
  float bottom;
  int alt = 0;
  boolean set = false;
  //**************************************
  //**************************************
  void move() { //logic behind moving the objects
    //x=mouseX;
    //y=mouseY;
    //x=x+10;
    if (y < bottom) {
      y=y+g;
      set = false;
    } else { 
      if (set == false && heros.get(0).x == x && bottom < 1490) {
        alive = false;
      }
      set = true;
    }
        if (y>bottom+1) {
      y=bottom;
    }
  }

  //**************************************
  void BottomDn() { //resize logic for bottom placement
    bottom=bottom+100;
  }

}
