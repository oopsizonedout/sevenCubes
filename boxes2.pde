
float rotx = PI/12;
float roty = PI/4;
float rotz = 0;

void setup() {
  size(600, 600, P3D);
  fill(255);
  rotateX(rotx);
  rotateY(roty);
  stroke(color(255,0,0));
}

void draw() {
  
  
  background(0);
  translate(width/2.0, height/2.0, 100);
  rotateX(rotx);
  rotateY(roty);
  rotateZ(rotz);
  scale(1);
  noFill();

if (frameCount%600 <= 300){
  // OUTER BOX
  pushMatrix();
  rotateY((300*frameCount)%(1200*PI));
  //rotateX(300*frameCount%(1200*PI));
  box(100);
  popMatrix();
  
  // 2nd BOX
  pushMatrix();
  rotateY(300*frameCount%(1200*PI));
  //rotateX(300*frameCount%(1200*PI));
  translate(0,-160*sin((frameCount*2*PI)/(300)),0);
  box(90);
  popMatrix();
  
  // 3rd BOX
  pushMatrix();
  rotateY(300*frameCount%(1200*PI));
  //rotateX(300*frameCount%(1200*PI));
  translate(0,160*sin((frameCount*2*PI)/(300)),0);
  box(80);
  popMatrix();
  
    // 4th BOX
  pushMatrix();
  rotateY(300*frameCount%(1200*PI));
  //rotateX(300*frameCount%(1200*PI));
  //translate(0,160*sin((frameCount*2*PI)/(900)),0);
  translate(cos(300*frameCount%(1200*PI))*160*sin((frameCount*2*PI)/(300)),0,sin(300*frameCount%(1200*PI))*160*sin((frameCount*2*PI)/(300)));
  box(70);
  popMatrix();
  
      // 5th BOX
  pushMatrix();
  rotateY(300*frameCount%(1200*PI));
  //rotateX(300*frameCount%(1200*PI));
  //translate(0,160*sin((frameCount*2*PI)/(900)),0);
  translate(cos(300*frameCount%(1200*PI))*-1*160*sin((frameCount*2*PI)/(300)),0,sin(300*frameCount%(1200*PI))*-1*160*sin((frameCount*2*PI)/(300)));
  box(60);
  popMatrix();
  
   // 6th BOX
  pushMatrix();
  rotateY(PI/2+(300*frameCount%(1200*PI)));
  //rotateX(300*frameCount%(1200*PI));
  //translate(0,160*sin((frameCount*2*PI)/(900)),0);
  translate(cos(300*frameCount%(1200*PI))*160*sin((frameCount*2*PI)/(300)),0,sin(300*frameCount%(1200*PI))*160*sin((frameCount*2*PI)/(300)));
  box(50);
  popMatrix();
  
   // 7th BOX
  pushMatrix();
  rotateY(-PI/2+(300*frameCount%(1200*PI)));
  //rotateX(300*frameCount%(1200*PI));
  //translate(0,160*sin((frameCount*2*PI)/(900)),0);
  translate(cos(300*frameCount%(1200*PI))*160*sin((frameCount*2*PI)/(300)),0,sin(300*frameCount%(1200*PI))*160*sin((frameCount*2*PI)/(300)));
  box(40);
  popMatrix();
  
}
else {
// OUTER BOX
  pushMatrix();
  rotateY(300*frameCount%(1200*PI));
  //rotateX(300*frameCount%(1200*PI));
  if(460>=frameCount%600 & frameCount%600>=440){
  fill(255,0,0);
    box(100);
  noFill();}
  else{box(100);}
  popMatrix();
  
  // 2nd BOX
  pushMatrix();
  rotateY(300*frameCount%(1200*PI));
  //rotateX(300*frameCount%(1200*PI));
if(480>=frameCount%600 & frameCount%600>=420){
    fill(255,0,0);
    box(90);
  noFill();}
  else{box(90);}
  popMatrix();
  
  
  // 3rd BOX
  pushMatrix();
  rotateY(300*frameCount%(1200*PI));
  //rotateX(300*frameCount%(1200*PI));
if(500>=frameCount%600 & frameCount%600>=400){
    fill(255,0,0);
    box(80);
  noFill();}
  else{box(80);}
  popMatrix();
  
  
    // 4th BOX
  pushMatrix();
  rotateY(300*frameCount%(1200*PI));
  //rotateX(300*frameCount%(1200*PI));
  //translate(0,160*sin((frameCount*2*PI)/(900)),0);
if(520>=frameCount%600 & frameCount%600>=380){
    fill(255,0,0);
    box(70);
  noFill();}
  else{box(70);}
  popMatrix();
  
  
      // 5th BOX
  pushMatrix();
  rotateY(300*frameCount%(1200*PI));
  //rotateX(300*frameCount%(1200*PI));
  //translate(0,160*sin((frameCount*2*PI)/(900)),0);
  if(540>=frameCount%600 & frameCount%600>=360){
    fill(255,0,0);
    box(60);
  noFill();}
  else{box(60);}
  popMatrix();
  
  
   // 6th BOX
  pushMatrix();
  rotateY(PI/2+300*frameCount%(1200*PI));
  //rotateX(300*frameCount%(1200*PI));
  //translate(0,160*sin((frameCount*2*PI)/(900)),0);
  if(560>=frameCount%600 & frameCount%600>=340){
    fill(255,0,0);
    box(50);
  noFill();}
  else{box(50);}
  popMatrix();
  

   // 7th BOX
  pushMatrix();
  rotateY(-PI/2+300*frameCount%(1200*PI));
  //rotateX(300*frameCount%(1200*PI));
  //translate(0,160*sin((frameCount*2*PI)/(900)),0);
  if(580>=frameCount%600 & frameCount%600>=320){
  fill(255,0,0);
    box(40);
  noFill();}
  else{box(40);}
  popMatrix();
}  
if(frameCount<=601){saveFrame("boxes/####.png");}
  }