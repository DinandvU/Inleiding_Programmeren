size(900,900);
background(255);

int sizeC = 510;

for(int i = 0; i < 50; i ++){
  ellipse(750 - sizeC/2, 450 - sizeC/50, sizeC,sizeC);
  sizeC = sizeC - 10;
  println(sizeC);
}
