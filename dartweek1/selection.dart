// void main(){

// void selectionSort(List<int> list){

// for(int i =0 ;i<list.length -1 ;i++){

//   for(int j = i+1 ;j<list.length ; j++){

//     if(list[i] >list[j]){

//      int temp =list[i];
//       list[i] =list[j];
//       list[j] =temp;

//     }
//   }

// }
// print(list);
// }
// List<int> list =[5,2,8,1,9,0];
// selectionSort(list);
// }

void main() {
  void selectionSort(List<int> list) {
    for (int i = 0; i < list.length - 1; i++) {
      int minIndex = i;
      for (int j = i + 1; j < list.length; j++) {
        if (list[j] < list[minIndex]) {
          minIndex = j;
        }
      }
      if (minIndex != i) {
        int temp = list[i];
        list[i] = list[minIndex];
        list[minIndex] = temp;
      }
    }

    print(list);
  }

  List<int> list = [5, 10, 89, 23456, 1, 7, 3, 8];
  selectionSort(list);
}
