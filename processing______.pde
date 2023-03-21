float [] x,y,z;
float a, b, c, count, second;
void setup(){
  size(1280,720);
  x=new float[10];
  y=new float[10];
  z=new float[10];
  for(int i=0;i<10;i++){
    x[i]=random(100,width);
    y[i]=random(100,height);
    z[i]= 50;
  }
  a=100;
  b=100;
  c=100;  
  count = 0;
  second = 0;
}
void draw(){
  background(255, 255, 255);
  if (second < 900){
  for(int i=0;i<10;i++){
    x[i]=x[i]+random(-3,3);
    y[i]=y[i]+random(-3,3);
    z[i]=z[i]+random(-3,3);
    segyunman(x[i],y[i],z[i]);
  }
  }
  if (second > 900  && second <1800){
  for(int i=0;i<10;i++){
    x[i]=x[i]+random(-5,5);
    y[i]=y[i]+random(-5,5);
    z[i]=z[i]+random(-5,5);
    segyunman(x[i],y[i],z[i]);
  }
  }
  if (second > 1800){
  for(int i=0;i<10;i++){
    x[i]=x[i]+random(-8,8);
    y[i]=y[i]+random(-8,8);
    z[i]=z[i]+random(-8,8);
    segyunman(x[i],y[i],z[i]);
  }
  }
  BBANGMAN(a,b,c);
  float [] dx,dy,d;
  dx=new float[10];
  dy=new float[10];
  d=new float[10];
  for(int i=0;i<10;i++){
    dx[i]=x[i]-a;
    dy[i]=y[i]-b;
    d[i]=sqrt(dx[i]*dx[i]+dy[i]*dy[i]);
  }
  for(int i=0;i<10;i++){
    if (d[i] < 75){
    fill(255, 0, 0);
    textSize(200);
    text("Boom!!",500,500);
    count++;
    }
  }
  if(count > 10){
    exit();
  }
  if(second > 900 && second < 960){
    fill(0, 0, 255);
    textSize(200);
    text("Round 2",500,500);
  }
  if(second > 1800 && second < 1860){
    fill(0, 0, 255);
    textSize(200);
    text("Round 3",500,500);
  }  
  if(second > 2700 && second < 2760){
    fill(0, 0, 255);
    textSize(200);
    text("Complete!!",500,500);
  }
  if(second == 3000){
    exit();
  }
  second++;
}
void keyPressed(){
  if (key == CODED) {
    if (keyCode == UP) {
      b -= 50;
    } else if (keyCode == DOWN) {
      b += 50;
    } else if (keyCode == LEFT) {
      a -= 50;
    } else if (keyCode == RIGHT) {
      a += 50;
    }
  }
}
