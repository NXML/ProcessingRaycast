  Vec3 lower_left_corner = new Vec3(-2, -1, -1);
  Vec3 horizontal = new Vec3(4,0,0);
  Vec3 vertical = new Vec3(0,2,0);
  Vec3 origin = new Vec3(0,0,0);
    Sphere sphere = new Sphere(new Vec3(0,0,-1),0.5);
  
  
  
  
void setup() {
  size(400, 200);
}

void draw() {

  for (int j = height-1; j>=0; j--) {
    for (int i = 0; i<width; i++) {
      float u =float(i)/float(width);
      float v = float(j)/float(height);
      //cast the ray
      Ray r = new Ray(origin,lower_left_corner.add(horizontal.mult(u).add(vertical.mult(v))));
      Vec3 vec = oColor(r);

      int ir = int (255.99*vec.x);
      int ig = int (255.99*vec.y);
      int ib = int (255.99*vec.z);


      stroke(ir, ig, ib);
      point(i, j);
    }
  }
}






Vec3 oColor(Ray r) {
  float t = sphere.is_hit(r);
  if(t>0){
    Vec3 N = r.point_at_parameter(t).rem(sphere.center).normalize();
    return new Vec3(N.x+1,N.y+1,N.z+1).mult(0.5);
  }
  
  
  Vec3 unit_dir = r.dir.normalize();
   t = 0.5*(unit_dir.y+1);
  Vec3 a = new Vec3(1, 1, 1).mult(1-t);
  a = a.add(new Vec3(0.5, 0.7, 1.0).mult(t));
  return a;
}



void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      sphere.center.z+=0.01;
    } else if (keyCode == DOWN) {
       sphere.center.z-=0.01;
    }else if (keyCode == LEFT) {
      sphere.center.x-=0.01;
    } else if (keyCode == RIGHT) {
       sphere.center.x+=0.01;
    } 
    
    
    
    
    
  } else {
    
  }
}
