class Minheap {
  List<int> heap = [];

  Minheap();

  Minheap.listed(List<int> list) {
    heap = list;
    for (var i = parent(list.length - 1); i >= 0; i--) {
      shiftdown(i);
    }
  }

  void shiftdown(int currentIndex) {
    int endIndex = heap.length - 1;
    int leftIndex = leftChild(currentIndex);

    while (endIndex >= leftIndex) {
      int rightIndex = rightChild(currentIndex);
      int indexToShift;

      if (endIndex >= rightIndex && heap[rightIndex] < heap[leftIndex]) {
        indexToShift = rightIndex;
      } else {
        indexToShift = leftIndex;
      }

      if (heap[currentIndex] > heap[indexToShift]) {
        int temp = heap[currentIndex];
        heap[currentIndex] = heap[indexToShift];
        heap[indexToShift] = temp;

        currentIndex = indexToShift;
        leftIndex = leftChild(currentIndex);
      }
    }
  }

  int parent(int i) {
    return (i - 1) ~/ 2;
  }

  int leftChild(int i) {
    return (i * 2) + 1;
  }

  int rightChild(int i) {
    return (i * 2) + 2;
  }

  void display() {
    for (int i = 0; i < heap.length; i++) {
      print(heap[i]);
    }
  }
}

void main() {
  List<int> list = [4, 5, 2, 3, 0];
  Minheap heap = Minheap.listed(list);
  heap.display();
}
