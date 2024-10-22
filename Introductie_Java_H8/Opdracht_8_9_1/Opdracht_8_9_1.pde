size(900,900);
background(255);

int sizeC = 700;

for(int i = 0; i < 50; i ++){
  ellipse(450,450,sizeC,sizeC);
  sizeC = sizeC - 10;
  println(i);
}
