void main() {
  int n = 10;
  int n1 = 0, n2 = 1, n3;
  
  print("Fibonacci series up to $n terms: ");
  
  for(int i = 0; i < n; i++){
    if(i == 0){
      print(n1);
      continue;
    }
    if(i == 1){
      print(n2);
      continue;
    }
    n3 = n1 + n2;
    n1 = n2;
    n2 = n3;
    print(n3);
  }
}
