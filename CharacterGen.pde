void setup() {
  CharacterGen Cgen = new CharacterGen();
  Cgen.generate();
  size(100, 100);
}
void draw() {
  background(255);
  rect(20,20,40,40);
}
