import 'minHeap.dart';

class MaxHeap{
  List<int> heap=[];

  MaxHeap();
  MaxHeap.Listed(List<int> list){
    heap =list;
    for (var i = parent(list.length-1); i >= 0; i--) {
      shiftdown(i);
    }
  }
  shiftdown(int curentIndex){
    int endindex = heap.length-1;
   int leftindex = leftchild(curentIndex);
   while(endindex >= leftindex){
    int rightindex =rightchild(curentIndex);
     int indexToShift;
    if(rightindex <= endindex && heap[leftindex] < heap[rightindex]){
      indexToShift = rightindex;
    }else{
      indexToShift = leftindex;
    }

    if(heap[curentIndex] < heap[indexToShift]){
     int temp = heap[curentIndex];
     heap[curentIndex] = heap[indexToShift];
     heap[indexToShift] =temp;
     curentIndex = indexToShift;
     leftindex =leftchild(curentIndex);
    }else{
      return;
    }
   }
  }
  insert(int data){
    heap.add(data);
    shiftup(heap.length-1);
  }

  void shiftup(int curentIndex){
    int parentindex = parent(curentIndex);
    while (curentIndex > 0 && heap[curentIndex] > heap[parentindex]) {
      int temp = heap[curentIndex];
      heap[curentIndex] = heap[parentindex];
      heap[parentindex] = temp;
      curentIndex = parentindex;
      parentindex =parent(curentIndex);
    }
  }
  void delete(){
    heap[0]= heap[heap.length-1];
    heap.removeLast();
    shiftdown(0);
  }
  int parent(int i){
    return (i-1) ~/2;
  }
  int leftchild (int i){
    return (i*2) +1;
  }
  int rightchild(int i){
    return (i*2) +2;
  }
  void display(){
    for (var i = 0; i <heap.length; i++) {
     print(heap[i]) ;
    }
  }
  void sort(){
    for (var i = heap.length-1; i >0 ; i--) {
      int temp = heap[i];
      heap[i]= heap[0];
      heap[0] =temp;
      shifdownforSort(0, i);
      
      
    }
  }
  shifdownforSort(int curentIndex,int endindex){

   int leftindex =leftchild(curentIndex);
   while (endindex > leftindex) {

    int rightindex = rightchild(curentIndex);
  int indexToShift ;
    if(endindex <= rightindex && heap[rightindex] < heap[leftindex]){
        indexToShift = rightindex;
    }else{
      indexToShift = leftindex;
    }
    if(heap[curentIndex ] <heap[indexToShift]){
      int temp =heap[curentIndex];
      heap[curentIndex] = heap[indexToShift];
      heap[indexToShift] =temp;

      curentIndex =indexToShift;
      leftindex =leftchild(curentIndex);
    }else{
      return;
    }
     
   }
   
  }
}
void main(){
  List<int> list = [5,12,3,4,100];
  MaxHeap  max = MaxHeap.Listed(list);
  // max.insert(1000);
max.sort();
  max.display();
}