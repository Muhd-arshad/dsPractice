// import 'dart:collection';


// class TrieNode{

//    Map<String , TrieNode?> children =  HashMap();
// }
// class Trie {

//   TrieNode root = TrieNode();
//   String symbol ='*';

//  void insert(String str){
//   populateSufixTrie(str);
//  }
// populateSufixTrie(String str){
//   for(int i =0 ;i< str.length ;i++){
//     insertSubstringStartingAt(i ,str);
//   }
// }
// insertSubstringStartingAt(int index , String str){
//   TrieNode node =root;

//   for(int i = index ;i< str.length ;i++){

//     String letter = str[i];
//     if(!node.children.containsKey(letter)){

//       TrieNode newnode = TrieNode();

//       node.children.addAll({letter : newnode});
//     }
//     node = node.children[letter]!;
//   }
//   node.children.addAll({symbol : null});
// }
//  bool contains(String str){

//   TrieNode node = root;

//   for(int i =0; i< str.length ;i++){
//     String letter = str[i];
//     if(!node.children.containsKey(letter)){
//       return false;
//     }
//     node = node.children[letter]!;
//   }
  
// return node.children.containsKey(symbol);
//  }
// }
// void main(){
// Trie trie = Trie();

// trie.insert('Arshad');
// print(trie.contains('rshad'));
// }



// import 'dart:collection';

// class TrieNode{
//   Map<String , TrieNode? > children  = HashMap();
// }
// class Trie{
// TrieNode root = TrieNode();
// String symbol ='*';

// void insert(String str){

//   populateSufixTrie(str);
// }
// populateSufixTrie(String str){
//   for(int i =0 ;i< str.length ;i++){
//     insertSubstringStartingAt(i , str);
//   }

// }
// insertSubstringStartingAt (int index , String str){

//   TrieNode node =root;

//   for(int i =index ;i< str.length ;i++){
//     String letter = str[i];

//     if(!node.children.containsKey(letter)){
//       TrieNode newnode =TrieNode();
//       node.children.addAll({letter : newnode});
//     }
//     node = node.children[letter]!;
//   }
//   node.children.addAll( {symbol : null});
// }

// bool contains(String str){
//   TrieNode node = root;
// for(int i =0 ;i < str.length ;i++){
//   String letter = str[i];

//   if(!node.children.containsKey(letter)){
//     return false;
//   }
//   node = node.children[letter]!;
// }
// return node.children.containsKey(symbol);
// }
// }

// void main(){
//   Trie trie = Trie();

//   trie.insert('Arshad');
//   print(trie.contains('rshad'));
// }

import 'dart:collection';

class TrieNode{
  Map<String ,TrieNode?> children = HashMap();
}
class trie {
  TrieNode root =TrieNode();
  String symbol = '*';

  void insert(String str){
    populateSufixTrie(str);
  }
  populateSufixTrie(String str){
    for(int i=0 ;i<str.length;i++){
      insertSubstringStartingAt(i, str);
    }
  }
  insertSubstringStartingAt(int index ,String str){
    TrieNode node = root;
   for(int i = index;i< str.length;i++){
    String letter = str[i];
    if(!node.children.containsKey(letter)){
      TrieNode newnode =TrieNode();
      node.children.addAll({letter : newnode});
    }
    node =node.children[letter]!;
   }
   node.children.addAll({symbol : null});

  }

  bool contains(String str){
    TrieNode node = root;

    for(int i = 0;i<str.length ;i++){
      String letter =str[i];
      if(!node.children.containsKey(letter)){
        return false;
      }
      node =node.children[letter]!;
    }
    return node.children.containsKey(symbol);
  }
}
void main(){
  trie tr =trie();
  tr.insert('arshad');
  print(tr.contains('ramees'));
}