// void main(){
//   int binarysearch(List<int>list,int target,int left,int right){

//     while(left<=right){
//       int middle =(left +right)~/2;

//       if(list[middle] ==target){
       
//          return middle;
//       }else if(target > middle){
//         left =middle +1;
//       }else{
//         right =middle -1;
//       }
//     }
// return -1;
//   }

//   List<int>list =[1,2,3,4,5,6];
//   int target =4;
// print(binarysearch(list, target, 0, list.length-1));
// }
void main(){
  int binarysearch(List<int> list,int target,int left,int right){
    
while(left<=right){
  int middle =(left+right)~/2;
  if(list[middle]==target){
    return middle;
  }else if(target >middle){
    left =middle+1;
  }else{
    right =middle-1;
  }
}
return -1;
  }

  List<int>list=[1,2,3,4,5,6];
  int target=7;
 print(binarysearch(list, target, 0, list.length-1)); 
}