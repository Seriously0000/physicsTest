PFont font;
final boolean isAnimated = false; // If you want it animated.
final int addValue = 2;
final int fontSize = 72; // Max font size is 72.
final int sizeHeight = 720;
final int sizeWidth = 960;
final int sizeX = 30;
final int sizeY = 50;
int valueX;
int valueY;
void setup()
{
 size(sizeWidth,sizeHeight);
 // 4:3 =  640x480 - 960x720 -  1280x960 - 1440x1080 == Old type of screens AAAxBBB --> That is the height of the screen.
 // DIA1 = 307.2kp - 691.2kp -  1.23mp -   1.56mp                            !
 // 16:9 = 854x480 - 1280x720 - 1600x900 - 1920x1080 == Widescreen          That is the width of the screen.  
 // DIA2 = 410.0kp - 921.6kp -  1.44mp -   2.07mp
 // 1:1 =  480x480 - 720x720 -  900x900 -  1080x1080 == Cube screen
 // DIA3 = 230.4kp - 518.4kp -  810.0kp -  1.16mp
 // 5:4 =  600x480 - 900x720 -  1200x960 - 1350x1080 == Old type of screens but changed. 
 // DIA4 = 288.0kp - 648.0kp -  1.15mp -   1.46mp
 background(0,0,0);
 font=loadFont("Ubuntu-72.vlw");
}
void draw() 
{
 rect(valueX-1,valueY-1,sizeX,sizeY);
 if (valueX >= sizeWidth-1){
  valueX = 0;};
 if (valueY >= sizeHeight-1){
  valueY = 0;};
 if (isAnimated == true){ 
   valueX += random(valueXRandomUnit1,valueXRandomUnit2);
   valueY += random(valueYRandomUnit1,valueYRandomUnit2);
 };
}
void mousePressed()
{
 if (isAnimated == false){
  valueX += addValue;
  valueY += addValue;}
 else{
  valueX += 0;
  valueY += 0;
 };
}
void keyPressed()
{
 if (isAnimated == false){
  valueX += random(valueXRandomUnit1,valueXRandomUnit2);
  valueY += random(valueYRandomUnit1,valueYRandomUnit2);}
 else{
  valueX += 0;
  valueY += 0;
 };
}
