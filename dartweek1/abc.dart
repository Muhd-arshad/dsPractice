void main(){
  List<int> arr =[1,2,3,4,5];

  for(int i=0;i<arr.length;i++){
    int flag=0;
    for(int j=2;j<=arr[i];){
      if(arr[i]%j==0)
      flag =1;
      break;
    }
    if(flag==0){
      print('prime number');
    }else{
      print('not a prime');
  }
  }
  
}