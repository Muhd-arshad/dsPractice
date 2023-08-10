void main(){
  List<int>arr =[1,2,3,4,9];
  int search =5;
  int i ;
 for( i=0;i<arr.length;i++){
   if(arr[i]==search){
     print('found');
     break;
   }
 }
  if( i ==arr.length){
    print('not found');
  }
}