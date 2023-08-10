void main(){
  List <int> arr=[1,2,3,4,5];
  int search =4;
 int  left =0;
 int right =arr.length-1;
  
  while(left<=right){
    int middle =(left +right) ~/2;
   
    
    if(arr[middle] == search){
      print('found');
      break;
    }
    if(search > arr[middle]){
      left =middle +1;
      
    }else{
      right =middle -1;
      
    }
    
  }
  if(left>right){
     print('not found');
  }
 
}