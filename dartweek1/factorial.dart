// void main(){
//   int n =5;
//    int fact(n){
//     if(n==1){
//       return 1;
//     }else{
//      return n*fact(n-1);
//     }
    
//    }
//    print(fact(n));
   
// }

  void main(){
    // int n=5;
    int fact(n){
      if(n==1){
        return 1;
      }else{
        return n*fact(n-1);
      }
    }
    print(fact(5));
  }