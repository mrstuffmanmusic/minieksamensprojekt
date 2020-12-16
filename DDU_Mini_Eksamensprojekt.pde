Button right = new Button(30, 10, 180, 50, "1/2");
Button wrong2 = new Button(300, 10, 180, 50, "1/4");

int correct;
int wrong;

void setup() {
  size(500, 300); 

  right.addAction(new Action() {   
    public void execute() {
      correct = 1/2;
    }
  }
  );

  wrong2.addAction(new Action() {   
    public void execute() {
      wrong = 2/4;
    }
  }
  );
}

void draw() {
  clear();
  right.display();
  wrong2.display();
  fill(255);
  textAlign(CENTER);
  text("Your Answer " + wrong, width/2, 250);
  text("Right Answer" + right, width/2, 300);
}

void mousePressed() {
  right.click();
  //if (right.click) = true;
  
  wrong2.click();
  
//  if wrong.click = false;
}
