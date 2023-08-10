// void main(){
//   int findvalue(List<int>list,int value){
//     int middle;
//   int left =0;
//   int right =list.length-1;
// while(left<=right){
//   if(left<=right){
//    middle=(left+right)~/2;
//     if(list[middle]==value){
//     return middle;
//   }   else if(value >list[middle]){
//     left =middle+1;
//   }else if(value<list[middle]){
//     right=middle-1;
//   }

//   }
// }
//   return -1;

//   }

//   List<int> list =[10,20,30,40,50,60];
//  print(findvalue(list, 50)) ;
// }
void main(){
  int binerySearch(List<int> list ,int value){

    int left=0;
    int middle;

    int right =list.length-1;

    while(left <= right){

      if(left<= right){
        middle =(left +right) ~/2;
        if(list[middle] == value){
          return list[middle];
        }else if(value> list[middle]){

          left = middle+1;

        }else if(value< list[middle]){
          right = middle -1;
        }
      }

    }
   return -1;
  }
  List<int> list =[1,2,3,4,5];
  int value =3;
  print(binerySearch(list, value));
}