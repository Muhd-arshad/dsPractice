// void main(){

//   void selectionSort(List <int> list){

//     for(int i =0 ;i<list.length ;i++){
//       int minIndex =i;

//       for(int j = i+1;j< list.length ; j++){

//         if(list[j] < list[minIndex]){

//          minIndex = j;

//         }
//       }
//       if(minIndex != i ){

//         int temp =list[i];
//         list[i] =list[minIndex];
//         list[minIndex] = temp;
//       }

//     }
//     print(list);
//   }

//   List<int> list =[5,0,5,9,1,56,45];
//   selectionSort(list);
// }
// void main(){

//   void bubbleSort(List<int> list){

//     for(int i =0 ;i<list.length ;i++){

//       for(int  j= 0 ;j<list.length-i-1 ;j++){

//        if(list[j] > list[j+1]){

//         int temp = list[j];
//         list[j] =list[j+1];
//         list[j+1] = temp;
//        }
//       }
//     }
//     print(list);

//   }
//    List<int> list =[5,0,5,9,1,56,45];
//    bubbleSort(list);
// }

// void main(){

//   void insertionSort(List<int> list){

//     for (var i = 0; i < list.length; i++) {

//       int j=i-1;

//       while(j>=0 && list[j] > list[j+1]){

//        int temp = list[j];
//        list[j] =list[j+1];
//        list[j+1] =temp;
//       j--;
//       }

//     }
//     print(list);
//   }
//  List<int> list =[5,0,5,9,1,56,45];
//  insertionSort(list);
// }

// List<int> quickSort(List<int> list){

// if(list.length <2){
//   return list;
// }

//   int pivot =list[list.length -1];

//   List<int> left =[];
//   List<int> right =[];
//    int i =0;

//   while(i < list.length -1){

//     if(list[i] < pivot){
//       left.add(list[i]);
//       i++;
//     }else{
//       right.add(list[i]);
//       i++;
//     }
//   }
//   return [...quickSort(left),pivot,...quickSort(right)];

// }
// void main(){

//  List<int> list =[5,0,5,9,1,56,45];
//  print(quickSort(list));
// }

// List<int> mergeSort(List<int> list){
//    if(list.length <=1){
//     return list;
//    }
//   int mid =list.length ~/2;
//   List<int> left = list.sublist(0,mid);
//   List<int> right = list.sublist(mid);

//   return merge(mergeSort(left),mergeSort(right));
// }

// List<int> merge(List<int> left,List<int> right){
//   List<int> result =[];
//   int i =0;
//   int j =0;
//   while(i<left.length && j<right.length){

//     if(left[i] < right[j]){

//     result.add(left[i]);
//     i++;

//     }else{
//       result .add(right[j]);
//       j++;
//     }

//   }

//   result.addAll(left.sublist(i));
//   result.addAll(right.sublist(j));

//   return result;
// }
// void main(List<String> args) {
//    List<int> list =[5,0,5,9,1,56,45];
//    print(mergeSort(list));
// }
// N = 5
// Arr[] = {4, 2, 1, 5, 3}
// Output:
// 2 1 -1 3 -1
// Explanation: Array elements are 4, 2, 1, 5
// 3. Next to 4 is 2 which is smaller, so we
// print 2. Next of 2 is 1 which is smaller,
// so we print 1. Next of 1 is 5 which is
// greater, so we print -1. Next of 5 is 3
// which is smaller, so we print 3.  Note
// that for last element, output is always
// going to be -1 because there is no element
// on right.

// void main(){

//   List<int> arr =[5, 6, 2, 3, 1, 7];
//  int n =6;
// for(int i =0 ;i<n -1;i++){

//   if(arr[i] >arr[i+1] ){
//     print(arr[i+1]);
//   }else if(arr[i] < arr[i+1] ){
//     print(-1);
//   }

// }

// print(-1);
// }
// class Stack {

//   List<int> list=[];

//   void pust(int data){
//     list.add(data);
//   }
//   void pop(){
//     list.removeAt(list.length-1);

//   }

//   void disply(){
//     print(list);
//   }
//   void delete(){
//     int mid = list.length ~/2;

//     for(int i = mid;i<list.length-1;i++){
//       list[i] =list[i+1];
//     }
//     pop();
//   }
// }
//  void main(List<String> args) {
//   Stack stack = Stack();

//   stack.pust(20);
//   stack.pust(30);
//   stack.pust(40);
//   stack.pust(50);
//   stack.pust(60);
//   stack.delete();
//   stack.disply();
// }

// void main(){

//   List<String> list =['5','2','a','d','+'];
//   List<int> bulb =[];
//   int temp=0 ;
//   for(var val in list){
//     if(int.tryParse(val) != null){
//      bulb.add(int.parse(val));
//     }else if(val == 'a'){
//      temp= bulb.removeLast();
//     }else if(val == 'd'){
//       int a = temp * bulb[0];

//       bulb.add(a);
//     }else if(val == '+'){
//       int sum = bulb[0] + bulb [1];
//       bulb.add(sum);
//     }
//   }
//   print(bulb);
// }

// class Hashmap {
//   int size;

//   List<dynamic> list = [];
//   Hashmap(this.size) {
//     list = List.filled(size, null);
//   }

//   hashFunction(key) {
//     return key % size;
//   }

//   insertItem(key) {
//     int index = hashFunction(key);

//     int flag = 0;
//     while (flag == 0) {
//       if (list[index] == null) {
//         list[index] = key;
//         flag++;
//         return;
//       } else {
//         index = hashFunction(index + 1);
//       }
//     }
//   }

//   void displayHash() {
//     for (int i = 0; i < list.length; i++) {
//       print(list[i]);
//     }
//   }
// }

// void main() {
//   Hashmap hash = Hashmap(5);

//   hash.insertItem(10);
//   hash.insertItem(20);
//   hash.insertItem(10);
//   hash.displayHash();
// }

// class Hashmap {
//   int size;
//   List<dynamic> list = [];
//   Hashmap(this.size) {
//     list = List.filled(size, null);
//   }

//   findex(String str){
//   int asci =0;
//     for(int i =0 ;i<str.length;i++){
//       asci =asci + str.codeUnitAt(i);
//     }
//     int result = asci % list.length;
//     return result;
//   }

//   insertItem(str){
//     int index =findex(str);
//     if(list[index] == null){
//   list[index] = str;
//     }else{
//       index =index +1;
//       list[index]=str;
//     }

//   }

//   void display(){

//     for(int i =0 ;i<list.length;i++){
//       print(list[i]);
//     }
//   }
// }
// void main(){

//   Hashmap hash =Hashmap(10);

//   hash.insertItem('arshad');
//   hash.insertItem('mubashir');
//   hash.insertItem('ramees');
//   hash.display();
// }
// import 'dart:io';

// class Stack {
//   List<int> list = [];
//   List<int> temp=[];
// int size = 0;
//   void push(int data) {
//     list.add(data);
//   size++;
//   }
//   void pop(){
//      for(int i = 0;i<size;i++){

//     temp.add(list.removeAt(list.length-1));

//      }

//   }

//   void display(){
//    for(int i =0 ;i<temp.length;i++){
//     stdout.write('${temp[i]}  ');
//    }
//   }
// }
// void main(){
//   Stack stack = Stack();
//   stack.push(1);
//   stack.push(6);
//   stack.push(43);
//   stack.push(1);
//   stack.push(2);
//    stack.push(0);
//     stack.push(5);
//   stack.pop();
//   stack.display();

// }
// class HashTable {
//   List<dynamic> table =[];
//   int size;

//   HashTable(this .size) {
//     table = List<dynamic>.filled(size, null);

//   }

//   int _hash(dynamic key) {
//     return key % size;
//   }

//   void put(dynamic key, dynamic value) {
//     int index = _hash(key);
//     table[index] = value;
//   }

//   dynamic get(dynamic key) {
//     int index = _hash(key);
//     return table[index];
//   }

//   void remove(dynamic key) {
//     int index = _hash(key);
//     table[index] = null;
//   }

//   void display() {
//     for (int i = 0; i < size; i++) {
//       print('Index $i: ${table[i]}');
//     }
//   }
// }

// void main() {
//   HashTable hashTable = HashTable(10);
//   hashTable.put('John', '555-1234');
//   hashTable.put('Mary', '555-4321');
//   hashTable.put('Tom', '555-5678');
//   print('Value for John: ${hashTable.get('John')}');
//   hashTable.remove('Mary');
//   hashTable.display();
// }

// class Hashmap {
//   int size;

//   List<dynamic> list = [];
//   Hashmap(this.size) {
//     list = List.filled(size, null);
//   }

//   hashFunction(dynamic key) {
//     return key % size;
//   }

//   insertItem(dynamic key,dynamic value) {
//     int index = hashFunction(key);

//     int flag = 0;
//     while (flag == 0) {
//       if (list[index] == null) {
//         list[index] = value;
//         flag++;
//         return;
//       } else {
//         index = hashFunction(index + 1);
//       }
//     }
//   }
//   void delete(key){
//     int Index = hashFunction(key);
//     list[Index ] =null;
//   }
//    get(dynamic key){
//   int index = hashFunction(key);
//   return list[index];
//   }

//   void displayHash() {
//     for (int i = 0; i < list.length; i++) {
//       print(list[i]);
//     }
//   }

// }

// void main() {
//   Hashmap hash = Hashmap(5);

// hash.insertItem(11,'arshad' );
// hash.insertItem(10, 'shameem');
// hash.insertItem(12,'ramees' );
// hash.insertItem(13,'sajfar' );

// print('get the value : ${hash.get(12)}');
//   hash.displayHash();
//  }




//   List<int> mergeSort(List<int> list) {
//     if (list.length <= 1) {
//       return list;
//     }

//     int mid = list.length ~/ 2;

//     List<int> left = list.sublist(0, mid);

//     List<int> right = list.sublist(mid);

//     return merge(mergeSort(left),mergeSort(right));
//   }

//   merge(List<int> left, List<int> right) {
//     List<int> result = [];

//     int i = 0;
//     int j = 0;

//     while (i < left.length && j < right.length) {
//       if (left[i] < right[j]) {
//         result.add(left[i]);
//         i++;
//       } else {
//         result.add(right[j]);
//         j++;
//       }
//     }
//     result.addAll(left.sublist(i));
//     result.addAll(right.sublist(j));
//     return result;
//   }
// void main(){
//   List<int> list = [5, 0, 5, 9, 1, 56, 45];
//   print(mergeSort(list));
// }


// void main(){

//   List<String> list =['5','2','a','b','+'];
//   List<int> str =[];
//   int temp =0;
//   for(var val in list){
//     if(int.tryParse(val) != null){
//         str.add(int.parse(val));
//     } else if(val == 'a'){
//        temp =str.removeLast();
//     }
//     else if(val == 'b'){
//      int b = str[0] * temp;
//      str.add(b);
//     }else if(val == '+'){
//       int a =str[0] + str[1];
//       str.add(a);
//     }
//   }
//   print(str);
// }

class Queue{

  List<int> list =[];

  void enque(data){
    list.add(data);
  }
  void deque(){
    list.removeAt(0);
  }
  void display(){
    for(int i=0 ;i<list.length ;i++){
      print( list[i]);
    }
  }
}
void main(){
  Queue queue = Queue();

  queue.enque(10);
  queue.enque(20);
queue.enque(30);
queue.deque();
  queue.display();
}