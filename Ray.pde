class Ray {

  Vec3 origin;
  Vec3 dir;

  public Ray(Vec3 origin, Vec3 dir) {
    this.origin= origin;
    this.dir=dir;
  }
  
  Vec3 point_at_parameter(float t){
    return this.origin.add(this.dir.mult(t));
  } 
}
