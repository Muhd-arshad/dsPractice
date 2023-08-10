class Node {
  int data;
  Node? left, right;
  Node(this.data);
}

class Bst {
  Node? root;

  void insert(int data) {
    Node? temp = root;
    if (root == null) {
      root = Node(data);
      return;
    }
    while (true) {
      if (temp!.data > data) {
        if (temp.left == null) {
          temp.left = Node(data);
          break;
        } else {
          temp = temp.left;
        }
      } else {
        if (temp.right == null) {
          temp.right = Node(data);
          break;
        } else {
          temp = temp.right;
        }
      }
    }
  }

  void inorder() {
    inorderHelper(root);
  }

  void inorderHelper(Node? root) {
    if (root != null) {
      inorderHelper(root.left);
      print(root.data);
      inorderHelper(root.right);
    }
  }

  bool contains(int data) {
    Node? temp = root;
    while (temp != null) {
      if (data < temp.data) {
        temp = temp.left;
      } else if (data > temp.data) {
        temp = temp.right;
      } else {
        return true;
      }
    }
    return false;
  }

  void delete(int data) {
    if (root != null) {
      deleteHelper(data, root);
    } else {
      print('empty list');
    }
  }

  Node? deleteHelper(int data, Node? root) {
    if (root == null) {
      return null;
    } else if (data < root.data) {
      root.left = deleteHelper(data, root.left);
    } else if (data > root.data) {
      root.right = deleteHelper(data, root.right);
    } else {
      if (root.left == null && root.right == null) {
        root = null;
      } else if (root.left == null) {
        root = root.right;
      } else if (root.right == null) {
        root = root.left;
      } else {
        Node? minrigth = MinrightValue(root.right);
        root.data = minrigth!.data;
        root.right = deleteHelper(minrigth.data, root.right);
      }
    }
    return root;
  }

  Node? MinrightValue(Node? root) {
    if (root == null) {
      return null;
    }
    if (root.left == null) {
      return root;
    } else {
      return MinrightValue(root.left);
    }
  }
}

void main() {
  Bst bst = Bst();
  bst.insert(10);
  bst.insert(12);
  bst.insert(8);
  bst.insert(5);
  print(bst.contains(15));
  bst.delete(12);
  bst.inorder();
}
