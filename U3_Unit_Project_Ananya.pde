import de.voidplus.leapmotion.*;
int hand;
int tX;
int tY;
ArrayList<Hand> hands; 
float value = 25;

LeapMotion leap;


void setup() 
{
  size(800, 500);
  background(255);
  leap = new LeapMotion(this);
  noStroke();
}

void draw() 
{
  fill(100, 150, 200);
  stroke(204, 102, 0);
  hands = leap.getHands();
  if (hands.size() > 0)
  {
    Hand h = hands.get(0);
    println(leap.getHands().size());
    
    Finger f = h.getIndexFinger();
    
   PVector t = f.getRawPositionOfJointTip();
   //map function
   //map the coordinates from the leapmotion to the coordinate of
   // your screen.
   float x = map(t.x,t.y,width,20,-10);
   ellipse(t.x, t.y, 20, -10);
   
  
   
  }
}