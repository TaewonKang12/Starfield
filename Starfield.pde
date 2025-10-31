star [] s = new star[50];
odd point = new odd();
void setup() {
  size(1000, 1000);
  for (int i = 0; i < s.length; i++) {
    s[i]= new star();
    s[0]= new odd();
  }
}
void draw() {
  background(0);
  for (int i = 0; i < s.length; i++) {
    s[i].show();
    s[i].move();
  }
}
