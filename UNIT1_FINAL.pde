Drops d[];

void setup(){
  size(1200,700);
  background(0);
  d=new Drops[500];
  for(int i = 0;i<500;i++){
   d[i]=new Drops(); 
  }
}

void draw(){
  fill(0,70);
  rect(0,0,width,height);
   for(int i = 0;i<500;i++){ 
   
     if(d[i].y>d[i].endPos){
      d[i].end();
   }
   else
     d[i].display();
  }
}


class Drops{

float x, y,speed;
float ellipseX,ellipseY,endPos;
color c;
Drops(){
 init();
}

void init(){
  x=random(width);
  y=random(-300,0);
  speed=random(1,4) * 2;
  c=color(random(255),random(255),random(255));
  ellipseX=0;
  ellipseY=0;
  endPos=height-(random(300));
}

void update(){
  y+=speed;
  }
  
  void display(){
    fill(c);
    noStroke();
    rect(x,y,2,15);
    update();
  }
  
  void end(){
    stroke(c);
    noFill();
    ellipse(x,y,ellipseX,ellipseY);
    
    ellipseY+=speed * 0.2;
    ellipseX+=speed * 0.5;
    if(ellipseX>50)
    init();
  }//when drop touches the ground
}
