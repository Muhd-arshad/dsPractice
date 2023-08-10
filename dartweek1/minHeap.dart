// class MinHeap{
//   List<int> heap =[];

//   MinHeap();
//   MinHeap.Listed(List<int> list){
//     buildHeap(list);
//   }

//   void buildHeap(List<int> list){
//     heap =list;
//     for(int  i = parent(list.length -1);i >= 0 ;i--){
//       shiftdown(i);
//     }
//   }
// void shiftdown(int curentIndex){

//   int endindex = heap.length -1;
//   int leftindex = leftchild(curentIndex);

//   while(leftindex <= endindex){
//     int rightindex =rightchild(curentIndex);
//     int indexToShift;

//     if(rightindex <= endindex && heap[rightindex] < heap[leftindex]){
//       indexToShift = rightindex;
//     }else{
//       indexToShift = leftindex;
//     }

//     if(heap[indexToShift] < heap[curentIndex]){
//       int temp = heap[curentIndex];
//       heap[curentIndex] = heap[indexToShift];
//       heap[indexToShift] =temp;
//       curentIndex =indexToShift ;
//       leftindex = leftchild(indexToShift);
//     }else{
//       return;
//     }
//   }

// }

// void remove(){
//   heap[0] = heap[heap.length -1];
//   heap.removeAt(heap.length -1);
//   shiftdown(0);
// }

// void insert(int data){
//   heap.add(data);
//   shiftup(heap.length -1);
// }

// void shiftup(int currentindex){
//   int parentindex = parent(currentindex);

//   while(currentindex > 0 && heap[currentindex] < heap[parentindex]){
//     int temp = heap[currentindex];
//     heap[currentindex] = heap[parentindex];
//     heap[currentindex] = heap[parentindex];
//     heap[parentindex] = temp ;
//     currentindex =parentindex ;
//     parentindex =parent(currentindex);
//   }
// }
//   int parent(int i ){
//     return (i-1) ~/2;
//   }
//   int leftchild(int i ){
//     return (2*i) + 1;
//   }
//   int rightchild (int i){
//     return (i*2) +2;
//   }
//   void display(){
//     for(int i =0 ;i< heap.length;i++){
//       print(heap[i]);
//     }
//   }
// }

// void main(){
//   List<int> list = [6,2,8];
//   MinHeap minHeap = MinHeap.Listed(list);
//   minHeap.insert(1);
//   minHeap.insert(5);
//   minHeap.insert(15);
//   minHeap.remove();
//   minHeap.display();

// }



// class MinHeap {
//   List<int> heap = [];
// MinHeap();
// MinHeap.Listed(List<int> list){
//   heap =list;
// for (var i = parent(list.length-1); i >= 0; i--) {
//   shiftdown(i);
// }
// }
// shiftdown(int curentIndex){

//   int endindex = heap.length-1;
//   int leftindex = leftchild(curentIndex);

//   while(leftindex <= endindex){
//     int rightindex = rightchild(curentIndex);
//     int indexToShift;
//     if(rightindex <= endindex && heap[rightindex] < heap[leftindex]){
//        indexToShift =rightindex;
//     }else{
//       indexToShift = leftindex;
//     }

//     if(heap[curentIndex] > heap[indexToShift]){
//       int temp = heap[curentIndex];
//       heap[curentIndex] = heap[indexToShift];
//       heap[indexToShift] = temp;

//       curentIndex =indexToShift;
//       leftindex = leftchild(curentIndex);
//     }else{
//       return;
//     }
//   }
// }
//   int parent(int i) {
//     return (i - 1) ~/ 2;
//   }

//   int leftchild(int i) {
//     return (i * 2) + 1;
//   }

//   int rightchild(int i) {
//     return (i * 2) + 2;
//   }

//   void display() {
//     for (int i = 0; i < heap.length; i++) {
//       print(heap[i]);
//     }
//   }

//   void insert(int data){
//     heap.add(data);
//     shiftup(heap.length-1);
//   }
//  shiftup(int currentindex){
//   int parentindex = parent(currentindex);

//   while(currentindex > 0 && heap[currentindex] < heap[parentindex]){
//     int temp =heap[currentindex];
//     heap[currentindex ] = heap[parentindex];
//     heap[parentindex] = temp;
//     currentindex = parentindex;
//     parentindex =parent(currentindex);
//   }

//  }
//  void remove(){
//   heap[0]= heap[heap.length-1];
//   heap.removeLast();
//   shiftdown(0);
//  }
// }

// void main() {
//   List<int> list = [56, 76, 89, 1, 5,100];
//   MinHeap minHeap = MinHeap.Listed(list);
//   minHeap.insert(0);
//   minHeap.remove();
//   minHeap.display();
// }
class Minheap{
  List<int> heap = [];

  Minheap();
  Minheap.Listed(List<int> list){
    heap= list;
    for (var i = parent(list.length -1); i >=0; i--) {
       shiftdown(i);
    }
  }
  shiftdown(int currentindex){

    int endindex =heap.length -1;
    int leftindex =leftchild(currentindex);

    while(endindex >= leftindex){

      int rightindex = rightchild(currentindex);
       int indexToShift;
      if(endindex >= rightindex && heap[rightindex] < heap[leftindex]){
        indexToShift = rightindex;
      }else{
        indexToShift = leftindex;
      }

      if(heap[currentindex] > heap[indexToShift]){
        int temp = heap[currentindex];
        heap[currentindex] = heap[indexToShift];
        heap[indexToShift] = temp;
        currentindex = indexToShift;
        leftindex = leftchild(currentindex);
      }else{
        return;
      }

    }
   


  }
   void heapRemove(){
      heap[0] = heap[heap.length-1];
      heap.removeLast();
      shiftdown(0);
    }
   insert(int data){
  heap.add(data);
  shiftup(heap.length-1);

}
shiftup(int curentIndex){

  int parentindex = parent(curentIndex);

  while (parentindex >=0 && heap[parentindex] > heap[curentIndex]) {

    int temp= heap[parentindex];
    heap[parentindex] = heap[curentIndex];
    heap[curentIndex ] = temp;
    curentIndex =parentindex;
    parentindex = parent(curentIndex);
    
  }
}

  int parent(int i){
    return (i -1) ~/2;
  }
  int leftchild(int i){
    return (i *2) +1;
  }
  int rightchild(int i){
    return (i*2) +2;
  }
  void dispaly(){
    for(int i=0 ;i<heap.length;i++){
      print(heap[i]);
    }
  }
  // void heapsort(){
  //   for(int i=0 ; i<heap.length ; i++){
  //     Sort(i);
  //   }
    
  // }
  // int Sort(int i){
  //  swap(0,heap.length-1);
  //  int removed = heap.removeLast();
  //  shiftdown(0);
  //  return removed;
  // }
  // swap(int i ,int j){
  //   int temp = heap[i];
  //   heap[i] = heap[j];
  //   heap[j] = temp;
  // }
}
void main(){
  List<int> list =[4,5,6,1,0];
  Minheap heap =Minheap.Listed(list);
  
   // heap.heapRemove();
  
 
  heap.dispaly();
}