

class Node {
  int data;

  Node? next;
  Node(this.data);
}

class Stack {
  Node? top;
  int count = 0;
  void push(int data) {
    Node newnode = Node(data);

    if (top == null) {
      top = newnode;
      count++;
    } else {
      newnode.next = top;
      top = newnode;
      count++;
    }
  }

  void display() {
    Node? temp = top;

    while (temp != null) {
      print(temp.data);

      temp = temp.next;
    }
  }

  void pop() {
    if (top == null) {
      print('stack underflow');
    }

    top = top?.next;
  }

  void deleteMiddle() {
    List<dynamic> arr = [];

    int n = (count / 2).round();
    for (int i = 0; i < n; i++) {
      arr.add(top?.data);
      top = top?.next;
    }
    for (int j = 0; j < arr.length - 1; j++) {
      print(arr[j]);
    }
  }
}

void main() {
  Stack stack = Stack();

  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.push(40);
  stack.push(50);
  // stack.push(60);
  // stack.push(70);
  // stack.push(80);
  // stack.push(90);
  // stack.push(100);

  stack.deleteMiddle();
  stack.display();
}
