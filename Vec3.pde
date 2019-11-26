


class Vec3 {
  float x, y, z;

  public Vec3(int x, int y, int z ) {
    this.x=x;
    this.y=y;
    this.z=z;
  }

  public Vec3(float x, float y, float z ) {
    this.x=x;
    this.y=y;
    this.z=z;
  }


  float length() {
    return sqrt(this.x*this.x+this.y*this.y+this.z*this.z);
  }

  float dot(Vec3 v) { 
    return this.x*v.x+ this.y*v.y+ this.z*v.z;
  }

  void crossProductSelf(Vec3 v) {
    this.x = this.y*v.z - this.z*v.y;
    this.y = this.z*v.x - this.x*v.z;
    this.z = this.x*v.y - this.y*v.x;
  }

  Vec3 crossProduct(Vec3 v) {
    Vec3 vr = new Vec3(this.x, this.y, this.z);
    vr.x = vr.y*v.z - vr.z*v.y;
    vr.y = vr.z*v.x - vr.x*v.z;
    vr.z = vr.x*v.y - vr.y*v.x;
    return vr;
  }



  void normalizeself() {
    float l = this.length();
    this.x/=l;
    this.y/=l;
    this.z/=l;
  }

  Vec3 normalize() {
    Vec3 v = new Vec3(this.x, this.y, this.z);
    v.normalizeself();
    return v;
  }

  void multself(float n) {
    this.x*=n;
    this.z*=n;
    this.y*=n;
  }

  Vec3 mult(float n) {
    Vec3 v = new Vec3(this.x, this.y, this.z);
    v.x*=n;
    v.z*=n;
    v.y*=n;
    return v;
  }

  void addself(Vec3 v) {
    this.x+=v.x;
    this.y+=v.y;
    this.z+=v.z;
  }

  Vec3 add(Vec3 v) {
    Vec3 vr = new Vec3(this.x, this.y, this.z);
    vr.addself(v);
    return vr;
  }
  
  void remself(Vec3 v) {
    this.x-=v.x;
    this.y-=v.y;
    this.z-=v.z;
  }

  Vec3 rem(Vec3 v) {
    Vec3 vr = new Vec3(this.x, this.y, this.z);
    vr.remself(v);
    return vr;
  }
  
  
  
  
  
  
  
  
}
