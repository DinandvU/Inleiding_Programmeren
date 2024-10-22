String zoekNaam = "Chassidy";
boolean gevonden = false;
String[] naam = {"Peter", "Jan", "Piet", "Daan", "Jarilo", "Kevin", "Chassidy"};

void setup(){
  for (int i =0; i < naam.length; i ++){
    if(zoekNaam == naam[i]){
      gevonden = true;
    }  
  }
    
    if(gevonden){
      println("Ja de naam " + zoekNaam + " is gevonden");
    }else{
      println("De naam " + zoekNaam + " is niet gevonden");
    }

}
