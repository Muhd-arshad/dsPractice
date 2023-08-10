// class Node {
//   int data;

//   Node? left, right;

//   Node(this.data);
// }

// class BinerySearchTree {
//   Node? root;

//   void inserItem(int data) {
//     Node currentNode = Node(data);

//     if (root == null) {
//       root = currentNode;
//       return;
//     }
//     Node? temp = root;
//     while (true) {
//       if (data < temp!.data) {
//         if (temp.left == null) {
//           temp.left = Node(data);
//           break;
//         } else {
//           temp = temp.left;
//         }
//       } else {
//         if (temp.right == null) {
//           temp.right = Node(data);
//           break;
//         } else {
//           temp = temp.right;
//         }
//       }
//     }
//   }

//   contains(int data) {
//     Node? temp = root;

//     while (temp != null) {
//       if (data < temp.data) {
//         temp = temp.left;
//       } else if (data > temp.data) {
//         temp = temp.right;
//       } else {
//         return true;
//       }
//     }
//     return false;
//   }

//   void remove(int data) {
//    if(root != null){
//     root = deleteHelper(root,data);

//    }else{
//     print('tree is empty');
//    }
//   }
//    Node? deleteHelper(Node? root ,int data){

//      if(root == null){
//       return null;
//      }else if(root.data > data){
//        root.left = deleteHelper(root.left, data);
//      }else if(root.data < data){
//       root.right = deleteHelper(root.right, data);
//      }else {
//       if(root.left == null && root.right == null){
//         root = null ;
//       }else if(root.left == null){
//         root = root.right;
//       }else if(root.right == null){
//         root = root.left;
//       }else{
//         Node? minright =getminValue(root.right);
//         root.data =minright!.data;
//         root.right = deleteHelper(root.right,minright.data);
//       }
//      }
// return root;
//      }

//   Node? getminValue(Node? root){

//     if(root == null){

//       return null ;
//     }
//     if(root.left == null){
//       return root;
//     }else{
//       return getminValue(root.left);
//     }
//   }

//   void inOrder(){
//     inOrderHelper(root);
//   }
//   void inOrderHelper(Node? root){
//    if(root  != null){
//     inOrderHelper(root.left);
//     print(root.data  );
//     inOrderHelper(root.right);
//    }
//   }

// }
// void main() {
//   BinerySearchTree tree = BinerySearchTree();

//   tree.inserItem(10);
//   tree.inserItem(20);
//   tree.inserItem(30);
//     tree.inserItem(40);
//   tree.inserItem(50);
//   tree.inserItem(60);
//   tree.inOrder();
//   print('-------------------');
// tree.remove(60);
// tree.inOrder();
//   // print(tree.contains(20));
// }

// class Node{
//   int data ;
//   Node? left ,right;
//   Node(this.data);
// }

// class BinerySearchTree{

//   Node? root ;

//   void inserItem(int data){

//      if(root == null){

//       root = Node(data);
//       return;
//      }
//      Node? temp = root;

//      while(true){

//       if(data < temp!.data ){

//         if(temp.left == null){
//           temp.left = Node(data);
//           break;
//         }else{
//           temp = temp.left;
//         }
//       }else{
//         if(temp.right == null ){
//           temp.right = Node(data);
//           break;
//         }else{
//           temp = temp.right;
//         }
//       }

//      }

//   }
// bool validatebst(){

//   List<int> list = [];
// bstHelper(root, list);
// for(int i =1 ;i< list.length ;i++){
//   if(list[i] < list[i-1]){
//     return false;
//   }
// }
// return true;
// }
// bstHelper(Node? node , List<int> list){

//   if(node != null){

//     bstHelper(node.left, list);
//     list.add(node.data);
//     bstHelper(node.right, list);

//   }

// }
// bool validatebst(){
//   List<int> list = [];

//   bstHelper(root ,list);
//   for(int i =1;i<list.length ;i++){
//     if(list[i] < list[i-1]){
//      return false;
//     }
//   }
//   return true;
// }
// bstHelper(Node? node , List<int> list){

//   if(node != null){
//     bstHelper(node.left, list);
//     list.add(node.data);
//     bstHelper(node.right, list);
//   }

// }
// void remove(int data){
//   if(root != null){
//     root = deleteHelper(root,data);
//   }else{
//     print('tree is empty');
//   }
// }

// Node? deleteHelper(Node? root , int data ){

//   if(root == null){
//     return null;
//   }else if(root.data > data){
//     root.left = deleteHelper(root.left, data);
//   }else if(root.data < data){
//     root.right = deleteHelper(root.right, data);
//   }else{
//     if(root.left == null && root.right == null){
//           root = null;
//     }else if(root.left == null){
//       root = root.right;
//     }else if(root.right == null){
//       root = root.left;
//     }else{
//       Node? minright = minvalue(root.right);
//       root.data =minright!.data;
//       root.right = deleteHelper(root.right, minright.data);
//     }
//   }
//   return root;
// }
// Node?  minvalue(Node? root){

// if(root == null){
//   return root;
// }
// if(root.left == null){
//   return root;
// }
// else{
//   return minvalue(root.left);
// }
// }

//   void inOrder(){
//     inOrderHelper(root );
//   }
//   void inOrderHelper(Node? root){

//     if(root != null){
//       inOrderHelper(root.left);
//       print(root.data);
//       inOrderHelper(root.right);
//     }
//   }

//   void preOrder(){
//     preOrderHelper(root);
//   }
//   void preOrderHelper(Node? root){
//     if(root != null){
//       print(root.data);
//       preOrderHelper(root.left);
//       preOrderHelper(root.right);
//     }
//   }
//   void postOrder(){
//     postOrderHelper(root);
//   }
//   void postOrderHelper(Node? root){
//     if(root!= null){

//     postOrderHelper(root.right);
//     postOrderHelper(root.left);
//     print(root.data);
//     }
//   }

// }

// void main(){

//   BinerySearchTree tree =BinerySearchTree();
//   tree.inserItem(17);
//   tree.inserItem(15);
//   tree.inserItem(12);
//   tree.inserItem(16);
//   tree.inserItem(20);
//   tree.inserItem(19);
//   tree.inserItem(25);
//   tree.remove(20);
//   tree.inOrder();
//   print(tree.validatebst());
//   print('preorder');
//   tree.preOrder();
// print('postOrder');
// tree.postOrder();
// }

// class Node{
//   int data;
//   Node? left, right;

//   Node(this.data);
// }
// class BinerySearchTree {
//    Node? root;

//    void inserItem(int data){
//     if(root == null){
//       root = Node( data);
//       return;
//     }

//     Node? temp = root;

//     while(true){
//       if(data < temp!.data){
//         if(temp.left  == null){
//           temp.left = Node(data);
//           break;

//         }else{
//           temp = temp.left;
//         }
//       }else{
//         if(temp.right == null){
//           temp.right = Node(data);
//           break;
//         }else{
//           temp = temp.right;
//         }
//       }
//     }
//    }

//    contain(int data){
//     Node? temp =root;

//     while(temp != null){
//       if(data < temp.data){
//         temp = temp.left;
//       }else if(data > temp.data){
//         temp = temp.right;
//       }else{
//         return true;
//       }
//     }
//     return false;
//    }

//    void  remove(int data){
//     if(root != null){
//       root =deleteHelper(root ,data);
//     }else{
//       print('tree is empty');
//     }
//    }
//    Node? deleteHelper(Node? root,int data){
//     if(root == null){
//       return null ;
//     }else if(root.data > data){
//       root.left = deleteHelper(root.left, data);
//     }else if(root.data < data){
//       root.right = deleteHelper(root.right, data);
//     }else{
//       if(root.left == null && root.left == null  ){
//         root = null;
//       }else if(root.left == null){
//         root == root.right;
//       }else if(root.right == null){
//         root =root.left;
//       }else{
//         Node? minright = getminValue(root.right);
//         root.data = minright!.data;
//         root.right = deleteHelper(root.right, minright.data);
//       }
//     }
//     return root;
//    }
//    getminValue(Node ? root){
//     if(root == null ){
//       return null ;
//     }

//     if(root.left == null){
//       return root;

//     }else{
//       return getminValue(root.left);
//     }
//    }

//    void inOrder(){
//     inOrderHelper(root);
//    }

//    void inOrderHelper(Node? root){
//     if(root != null){
//       inOrderHelper(root.left);
//       print(root.data);
//       inOrderHelper(root.right);
//     }
//    }
//  void preOrder(){
//   preOrderHelper(root);
//  }
//  void preOrderHelper(Node? root){
//   if(root != null){
//     print(root.data);
//     preOrderHelper(root.left);
//     preOrderHelper(root.right);
//   }

//  }
//  void postOrder(){
//   postOrderHelper(root);
//  }

//  void postOrderHelper(Node? root){
//   if(root != null){
//     postOrderHelper(root.right);
//     postOrderHelper(root.left);
//     print(root.data);
//   }
//  }

// }
//  void main(){

//     BinerySearchTree tree =BinerySearchTree();
//     tree.inserItem(10);
//     tree.inserItem(9);
//     tree.inserItem(7);
//     tree.inserItem(20);
//     tree.remove(20);
//     tree.inOrder();
//     print('preOder -------');
//     tree.preOrder();
//     print('postOder -------');
//     tree.postOrder();
//     print(tree.contain(20));

//    }



// class Node {
//   int data;
//   Node? left, right;
//   Node(this.data);
// }

// class BinerySearchTree {
//   Node? root;

//   void insertItem(int data){
//     if(root == null){
//       root = Node(data);
//       return;
//     }
    
//     Node? temp =root;

//     while (true) {

//       if(temp!.data > data){

//         if(temp.left == null){
//           temp.left = Node(data);
//           break;
//         }else{
//           temp =temp.left;
//         }

//       }else{
//         if(temp.right == null){
//           temp.right = Node(data);
//           break;
//         }else{
//           temp =temp.right;
//         }
//       }
      
//     }
//   }

//   void inOrder() {
//     inOrderHelper(root);
//   }

//   void inOrderHelper(Node? root) {
//     if (root != null) {
//       inOrderHelper(root.left);
//       print(root.data);
//       inOrderHelper(root.right);
//     }
//   }

//   bool contains(int data) {
//     Node? temp = root;
//     while (temp != null) {
//       if (data < temp.data) {
//         temp = temp.left;
//       } else if (data > temp.data) {
//         temp = temp.right;
//       } else {
//         return true;
//       }
//     }
//     return false;
//   }

//   void remove(int data){
//     if(root != null){
//       deleteHelper(root, data);
//     }else{
//       print('empty');
//     }
//   }

//   Node? deleteHelper(Node? root, int data) {
//     if (root == null) {
//       return null;
//     } else if (root.data > data) {
//       root.left = deleteHelper(root.left, data);
//     } else if (root.data < data) {
//       root.right = deleteHelper(root.right, data);
//     } else {
//       if (root.left == null && root.right == null) {
//         root = null;
//       } else if (root.left == null) {
//         root = root.right;
//       } else if (root.right == null) {
//         root = root.left;
//       } else {
//         Node? minrigth = getminvalue(root.right);
//         root.data = minrigth!.data;
//         root.right = deleteHelper(root.right, minrigth.data);
//       }
//     }
//     return root;
//   }

//  getminvalue(Node? root){
//   if(root == null){
//     return root;
//   }
//   if(root.left == null){
//     return root;
//   }else{
//     return getminvalue(root.left);
//   }
//  }

//  bool validateBst(){
//   List<int> list =[];
//  validatBstHelper(root, list);
//  for(int i=0 ;i<list.length-1;i++){
//   if(list[i] > list[i+1]){
//     return false;
//   }
//  }
//  return true;
//  }
//  void validatBstHelper(Node? root , List<int >list){
//   if(root != null){
//     validatBstHelper(root.left, list);
//     list.add(root.data);
//     validatBstHelper(root.right, list);

//   }
//  }
// }

// void main() {
//   BinerySearchTree tree = BinerySearchTree();
//   tree.insertItem(10);
//   tree.insertItem(8);
//   tree.insertItem(12);
//   tree.insertItem(4);
//   tree.insertItem(13);

//   tree.inOrder();
//   print(tree.validateBst());
//   // print(tree.contains(4));
// }
class Node{
  int data;
  Node? left,right;
  Node(this.data);
}
class BinerySearchtree{
  Node? root;

  void inserItem(int data){
    if(root ==  null){
      root =Node(data);
      return ;
    }
    Node? temp =root;

    while(true){
      if(temp.data > data){
        if(temp.teft == null){
          temp.left =Node(data);
          break;
        }else{
          temp =temp.left;

        }
      }else{
        if(temp.right == null){
          temp.right = Node(data);
          break;
        }else{
          temp = temp.right;
        }
      }
  }
  
  }
  void inOrder(){
    inOrderHelper(root);
  }
  void inOrderHelper(Node? root){
    if(root != null){
      inOrderHelper(root.left);
      print(root.data);
      inOrderHelper(root.right);
    }
  }
}
void main(){
  BinerySearchTree bst =BinerySearchTree();
  bst.inserItem(10);
  bst.inOrder();
}