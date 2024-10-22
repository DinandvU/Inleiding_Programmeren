{printFibonacci(40);
 }
void printFibonacci(int n){
  int a = 0;
  int b = 1;
  int c;
  
  println(a);
  println(b);
  
  for(int i = 2; i < n; i++) {
    c = a + b;
    println(c);
    
    a = b;
    b = c;
  }
}
