// List<int> mergeSort(List<int> list) {
//   // base case: a list with zero or one element is already sorted
//   if (list.length <= 1) {
//     return list;
//   }

//   // divide the list into two sub-lists
//   int mid = (list.length / 2).floor();
//   List<int> left = list.sublist(0, mid);
//   List<int> right = list.sublist(mid);

//   // recursively sort each sub-list
//   left = mergeSort(left);
//   right = mergeSort(right);

//   // merge the sorted sub-lists
//   return merge(left, right);
// }

// List<int> merge(List<int> left, List<int> right) {
//   List<int> result = [];
//   int i = 0;
//   int j = 0;

//   // compare elements of left and right sub-lists and merge them in sorted order
//   while (i < left.length && j < right.length) {
//     if (left[i] < right[j]) {
//       result.add(left[i]);
//       i++;
//     } else {
//       result.add(right[j]);
//       j++;
//     }
//   }

//   // add any remaining elements from left or right sub-lists
//   result.addAll(left.sublist(i));
//   result.addAll(right.sublist(j));

//   return result;
// }

// void main() {
//   List<int> list = [5, 2, 6, 3, 1, 4];
//   List<int> sortedList = mergeSort(list);
//   print(sortedList);  // output: [1, 2, 3, 4, 5, 6]
// }



List<int> mergesort(List<int>list){

  if(list.length <=1){
    return list;
  }

  int mid =(list.length /2 ).round();

  List<int> left =list.sublist(0,mid);
  List<int> right =list.sublist(mid);

  

  return merge(mergesort(left),mergesort(right));

}

List<int> merge(List<int>left,List<int>right){

  List<int> result =[];
  int i =0;
  int j=0;

  while(i<left.length && j<right.length){
    if(left[i] < right[j]){
      result .add(left[i]);
      i++;
    }else{
      result.add(right[j]);
      j++;
    }
  }
 
  result.addAll(left.sublist(i));
  result.addAll(right.sublist(j));
 
return result;
 
}
void main(){
List<int> list =[7,1,9,5,10,3,0,9,8,1,2434,6,78,98];
print(mergesort(list));


}