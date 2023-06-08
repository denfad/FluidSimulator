final int N = 200;



Fluid fluid;
float density2 = 50;
float velocity2 = 3;

void settings() {
  size(N*SCALE, N*SCALE);
  
}

void setup() {
  fluid = new Fluid(0,0, 0.1);
  
   fluid.addVelocity(2, (height / 2 ) / SCALE, 3, 0);
}

void mouseDragged() {
  float amX = mouseX - pmouseX;
   float amY = mouseY - pmouseY;
  fluid.addDensity(mouseX / SCALE, mouseY / SCALE, 1000);
  fluid.addVelocity(mouseX / SCALE, mouseY / SCALE, amX, amY);
}

void draw() {
  background(0);
  fluid.step();
  fluid.render();
  
  
  
}
