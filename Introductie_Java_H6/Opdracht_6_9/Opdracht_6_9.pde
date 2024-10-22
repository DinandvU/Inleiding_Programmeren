float cijfer = 8.1;
float cijferTwee = 8.9;
float gemiddelde = (cijfer + cijferTwee) / 2;
boolean diploma = false;
boolean cumlaude = false;

if(gemiddelde > 5.5){
  diploma = true;
}

if(gemiddelde >= 8.0){
  cumlaude = true;
}

if(diploma){
  println("Gefeliciteerd");
}

if(cumlaude){
  println("Gefeliciteerd, je bent cumlaude geslaagd");
}
