class Node {
  int data;
  Node? next;
  Node(this.data);
}

class Queue {
  Node? front;
  Node? rear;

  void enque(int data) {
    Node newnode = Node(data);

    if (rear == null) {
      front = newnode;
      rear = newnode;
      return;
    } else {
      rear?.next = newnode;
      rear = newnode;
    }
  }

  void dequeue(){

    if(front == null){
      print('empty');
    }
    front = front?.next;

    if(front == null){
      rear = null;
    }
  }

  void display() {
    Node? temp =front;

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  Queue queue = Queue();
  queue.enque(10);
  queue.enque(20);
  queue.enque(30);
  queue.enque(40);
  queue.dequeue();
  queue.display();
}
