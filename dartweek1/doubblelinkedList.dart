class Node{
  int? data;
  Node? next;
  Node? prev;
  Node(this.data);
}
class DlinkedList {
  Node? head;
  Node? tail;
    void insert(int data){
      Node newNode =Node(data);
      if(head == null){
        head =newNode;
      }else{
        tail?.next =newNode;
        newNode.prev=tail;
      }
      tail=newNode;
    }
    void display(){
      Node? temp =head;

      if(head ==null){
        print('empty');
      }
      while(temp!=null){
        print(temp.data);
       temp= temp.next;
      }
    }
void displayRelease(){
  Node? temp =tail;
  while(temp!=null){
    print(temp.data);
    temp=temp.prev;
  }
}
}
void main(){
  DlinkedList list=DlinkedList();
  list.insert(100);
  list.insert(200);
  list.insert(300);
  list.display();
  list.displayRelease();
}
