float di = TWO_PI/20;
float t = 0.01;
float NOISE_LEVEL = 40;

void setup(){
 size(800,600); 
}


void draw(){
  noStroke();
  background(0,0,0);
  translate(width/2, height/2);
  scale(8);
  beginShape();
  for (float i = 0; i < TWO_PI - (di); i+=di){
    float u = noise(i+t)*NOISE_LEVEL;
    float x = (u+10)*cos(i);
    float y = (u+10)*sin(i);
    vertex(x,y);
  }
  float u = noise(0 +t)*NOISE_LEVEL;
  float x = (u+10)*cos(TWO_PI - di );
  float y = (u+10)*sin(TWO_PI - di );
  vertex(x,y);
  endShape();
  t+=0.01;
  //noLoop();
}