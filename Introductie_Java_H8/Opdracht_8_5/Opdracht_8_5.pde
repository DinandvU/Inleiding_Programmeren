size(500,500);
background(255);

int sizeC = 300;

for(int i = 0; i < 5; i ++){
  ellipse(250,250,sizeC,sizeC);
  sizeC = sizeC - 80;
}
