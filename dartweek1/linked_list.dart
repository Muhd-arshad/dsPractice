class Node{
  int? data;
  Node? next;
  Node(this.data);
}
class linkedlist{
  Node? head =null;
  Node? tail =null;

  void insert(int data){
    Node newNode =Node(data);
    if(head==null){
      head=newNode;
    }else{
      tail?.next=newNode;
    }
    tail=newNode;
  }
void display(){
  if(head==null){
    print('empty');
    return;
  }
  Node? temp =head;
  while(temp!=null){
    print(temp.data);
    temp=temp.next;
  }
}
void delete(int data){
  Node? temp =head,prev =null;
  if(temp !=null && temp.data == data){
    head =temp.next;
    return;
  }
  while(temp!=null &&temp.data !=data){
    prev =temp;
    temp=temp.next;
  }
  if(temp==null){
    return;
  }
  if(temp==tail){
    tail=prev;
    tail?.next=null;
    return;
  }
  prev?.next =temp.next;
}
void insertAfter(int nextTo,int data){
  Node newNode =Node(data);
  Node? temp =head;
  while(temp!=null && temp.data != nextTo){
    temp =temp.next;
  }
  if(temp ==null){
    return;
  }
  if(temp  ==tail){
    tail?.next =newNode;
    tail =newNode;
    return;
    
  }
  newNode.next =temp.next;
  temp.next = newNode;
}

void removeDublicate(){
  Node? current =head;
  while(current!=null){
    
  Node ? next=current.next;
  while(next != null && next.data== current.data){
    next =next.next;
  }
  current.next =next;
  if(next ==tail){
    tail=current;
    
  }
  current=next;
  }
}
void reverse(){
  Node? temp=head;
Node?prev=null;
Node? next=null;

if(head ==null){
  print('empty');
}
while(temp!=null){

next =temp.next;
temp.next =prev;
prev =temp;
temp=next;
 
}
head =prev;

  
}
}
void main(){
  linkedlist list =linkedlist();
  list.insert(100);
  list.insert(200);
   list.insert(200);
     list.insert(200);
     list.insert(300);
  list.insert(300);
   list.insert(300);
     list.insert(400);
    //  list.removeDublicate();
     list.reverse();
   list.display();
}