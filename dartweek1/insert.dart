// void main(){
//   List<int>arr =[1,2,3,4,5];
//   int pos=2;
 
// //  arr.remove(4);
 
// print(arr.reversed.toList());
// }
// void main(){
//   String name ='arshad';
//   String b =name.split('').reversed.join();

//   print(b);
// }
// void main() {
//   List<int> numbers = [1, 2, 3, 5];
//   int valueToInsert = 4;
//   int insertIndex = 3;
  
  
//   for (int i = numbers.length - 1; i >= insertIndex; i--) {
//     numbers[i + 1] = numbers[i];
//   }
 
//   numbers[insertIndex] = valueToInsert;
  
//   print(numbers);
// }

void main(){
  List<int> list =[1,2,3,4,5];

list.insertAll(3, [4,5,6,7,8,1,2,3]);  
print(list.toSet());
}