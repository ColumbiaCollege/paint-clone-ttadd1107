//finish this paint program.
//if you press more green enough times it goes back to black
//if you press the less green button when the cursor is black it should go to green
//hint modulo command %
//further hint the modulo command in processing doesn't play nice with negatives

//make buttons for blue and red
//debounce the buttons
//hint make a mousePressed method

//Pat on the back for marking your up/down buttons in a nice way.

color cursorcolor = 0;
int green = 0;
int blue =0;
int red = 0;                    //colors as an int 
int step = 10;
int Move = 300;        // moves the text 
PFont f;

void setup() {
  size(1000, 700);          // sets up world
  background(255);
  fill(0);
     f = createFont("dice", 16, true);   // make a font refrenced
                     // sets text to black
  textFont(f);  
text("hold l and o to increase and decrease the ammount of red ", width/4  +Move,20);
text("j and u for green", width/4 +Move,40);
text("k and i for blue", width/4 +Move,60);
text("Press R ,G ,B to get the respective color", width/4 +Move,80);
text("Click on the box to get the correct color", width/4 +Move,100);
}



void draw() {
  noStroke();
                             
  keyPressed();
  //more green button
   colors();
 // fill(0, green, 0);


  //fills squares with colors

  fill(0, 0, 255);
  rect(0, 0, 50, 50);
  fill(0, 255, 0);
  rect(0, 50, 50, 50);
  fill(255, 0, 0);
  rect(0, 100, 50, 50);


  cursorcolor = color(red, green, blue); 

  //drawing part
  if (mousePressed) {
    fill(cursorcolor);
    ellipse(mouseX, mouseY, 8, 8);
  }
}
void keyTyped() {                        // checks to see if a letter is pressed and if it is cnage the color 
  if (key == 'r') {

    red = 255;                                     
    
  }
  if (key == 'g') {
    green = 255;
  }
  if (key == 'b') {
    blue = 255;
  }
  if (key == 'x') {
    

    blue = 0;
    green = 0;
    red = 0;
   
  } 
  if (key == 'l') {
    red += 10;
  }
   if (key == 'o') {
    red -= 10;
  }
    if (key == 'k') {
    green += 10;
  }
   if (key == 'i') {
    green -= 10;
  }
    if (key == 'j') {
    blue += 10;
  }
   if (key == 'u') {
    blue -= 10;
  }
}
void colors() {                                                // changes the color when you click on a box

  if (mousePressed && mouseX<50 && mouseY<50) {

    blue = 255;
  } else if (mousePressed &&mouseX<50 && mouseY<100) {

    green = 255;
  } else if (mousePressed &&mouseX<50 && mouseY<150) {

    red = 255;
 
}

}
