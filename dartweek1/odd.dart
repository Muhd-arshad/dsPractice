void main(){

  List<int> odd =[1,2,3,4,5,6];

  // for(int  i=0;i<odd.length;i++){
  //   if(odd[i]%2 != 0){
  //     print('odd number');
  //   }else{
  //     print('not odd');
  //   }
  // }

  // for(int i =0 ;i<odd.length;i++){
  //   if(odd[i] %2 ==0){
  //     print('even number');
  //   }else{

  //     print('not evev');
  //   }
  // }
// for(int i=0;i<odd.length;i++){
//     int flag=0;
//     for(int j=2;j<=odd[i];){
//       if(odd[i]%j==0)
//       flag =1;
//       break;
//     }
//     if(flag==0){
//       print('prime number');
//     }else{
//       print('not a prime');
//   }
//   }
int flag;
  for(int i =0;i<odd.length ;i++){
     flag = 0;
    for(int j =2 ;j<odd[i];j++){
      if(odd[i]%j==0){
        flag =1;
        break;
      }
     

    }
    if(flag == 0 && odd[i] != 1){
      print('prime number');
    }else{
      print('not prime');
    }
  }
}