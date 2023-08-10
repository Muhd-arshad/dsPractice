// void main() {
//   int n = 5;

//   int fibonoci(n) {
//     if (n == 0) {
//       return 0;
//     } else if (n == 1) {
//       return 1;
//     } else {
//       return fibonoci(n - 1) + fibonoci(n - 2);
//     }
//   }

//   print(fibonoci(n));
// }
void main(){
  int n=5;
  int fibonoci(n){
    if(n==0){
      return 0;
    }else if(n==1){
      return 1;
    }else{
      return fibonoci(n-1)+fibonoci(n-2);
    }

  }
  print(fibonoci(n));
}