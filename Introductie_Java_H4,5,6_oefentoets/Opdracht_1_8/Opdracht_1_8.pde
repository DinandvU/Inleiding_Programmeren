int steen1 = 1;
int steen2 = 1;
int steen3 = 1;
float resultaat = (steen1 + steen2 + steen3) / 3;

if (steen1 == 1 && steen2 == 1 && steen3 == 1) {
  println("Critcal MISS!", resultaat);
} else if (steen1 == 1 || steen2 == 1 || steen3 == 1) {
  println("mis", resultaat);
} else if (steen1 == 6 && steen2 == 6 && steen3 == 6){
  println("Critical HIT!", resultaat);
} else println("HIT!", resultaat);
