public class physics
{    
  boolean collision = false;
 

void draw(){
background(255);
  rect firstRect = new rect(200,300,150,100,0,0);
  rect secondRect = new rect(mouseX,mouseY,50,50,0,0);
  firstRect.draw();
  secondRect.draw();
  if(collision == true){
  fill(255,0,0);
  }
  else
  {
    fill(255,255,255);
  }
  collisionDetectionRectRect(firstRect.pos.x,firstRect.w, secondRect.pos.x,secondRect.w,firstRect.pos.y,firstRect.h, secondRect.pos.y,secondRect.h);
}
void collisionDetectionRectRect(float frx, float frw, float srx, float srw,float fry, float frh, float sry, float srh){
 float max1x = max(frx,frx+frw);
 float min1x = min(frx,frx+frw);
 float max2x = max(srx,srx+srw);
 float min2x = min(srx,srx+srw);
 float max1y = max(fry,fry+frh);
 float min1y = min(fry,fry+frh);
 float max2y = max(sry,sry+srh);
 float min2y = min(sry,sry+srh);
 
 if(max1x >= min2x && min1x <= max2x && max1y >= min2y && min1y <= max2y) 
 {
   collision = true;
 }
  else 
  {
    collision = false;
  }
  println(collision);
}
}


  
  