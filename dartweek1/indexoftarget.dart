void main(){
  List <int> arr=[1,2,3,4,9];


  int target =10;
   
   for(int i=0;i<arr.length ;i++){
    for(int j =i+1;j<arr.length;j++){
     if(arr[i] +arr[j]==target){
     print([i,j]);
     }

    }
   }
}