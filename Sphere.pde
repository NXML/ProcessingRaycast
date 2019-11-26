class Sphere{
  
  Vec3 center;
  float radius;
  public Sphere(Vec3 center, float r){
    this.center=center;
    this.radius=r;
  }
  
  boolean is_hit(Ray r){
    Vec3 oc = r.origin.rem(this.center);
    float a = r.dir.dot(r.dir);
    float b = oc.dot(r.dir)*2.0;
    float c = oc.dot(oc) - this.radius*this.radius;
    float delta = b*b - 4*a*c;
    return (delta >0);


   }
}
