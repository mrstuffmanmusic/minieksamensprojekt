class Button {
  float x; 
  float y; 
  float w;
  float h;
  String navn;
  Action a;

  Button(float x, float y, float w, float h, String navn) {

    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    this.navn=navn;
  }
  void addAction(Action a) {
    this.a=a;
  }

  void display() {

    fill(231, 145, 0);
    //rect(182.5, 50, 135,100);
    fill(102, 51, 153);
    textSize(16);
    text("Hvad er halvdelen af", 250, 130);
    text("1/2 ", 250, 150);


    fill(255, 255, 0);
    rect(182.5, 178, 135, 30);
    fill(102, 51, 153);
    textSize(16);
    text("Vælg den rigtige", 250, 200);

    fill(255, 40, 0);
    rect(x, y, w, h);

    fill(0, 255, 255);
    textSize(14);
    text("1/4", 120, 40);
    text("2/4", 390, 40);
  }

  void click() {
    if ((mouseX>x)&&(mouseX<x+w)&&(mouseY>y)&&(mouseY<y+h)) {
            
      a.execute();
    }
  }
}
