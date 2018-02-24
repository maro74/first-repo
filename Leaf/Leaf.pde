void settings() {
  size(400, 800, P2D);
}
void setup() {
  background(255, 104, 0);
  noLoop();
}
void draw() {
  plant(15,0.4,0.8);
  
}
void leaf () {
  beginShape();
    vertex(100.0, -70.0);
    bezierVertex(90.0, -60.0, 40.0, -100.0, 0.0, 0.0);
    bezierVertex(0.0, 0.0, 100.0, 40.0, 100.0, -70.0);
  endShape();
}

void plant(int numLeaves, float minLeafScale, float maxLeafScale){
  line(width /2,0,width/2,height);//the plant stem
  int gap = height/numLeaves; //vertical spacing leaves
  float angle = 0;
  
  for(int i= 0;i<numLeaves;i++){
    int x = width / 2;
    int y = gap*i + (int)random(gap);
    float scale = random(minLeafScale,maxLeafScale);
    
    pushMatrix(); //saves the current background position
    
     //when these operations are performed the background is moving
    translate(x,y);
    rotate(angle);
    scale(scale);
    leaf();
    popMatrix(); //the backgorund position is reset to default values
    
   angle += PI;
  }
}