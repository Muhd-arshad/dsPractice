// import 'dart:collection';
// import 'dart:io';

// class Graph{

//   Map<int , List<int>> map = HashMap();

//   void create(int data){
//     map.addAll({data : []});
//   } 

//   void insert(int vertex , int edge ,bool isBiDirection){
//     if(!map.containsKey(vertex)){
//       create(vertex);
//     }
//     if(!map.containsKey(edge)){
//       create(edge);
//     }

//     map[vertex]?.add(edge);
//     if(isBiDirection ){
//       map[edge]?.add(vertex);
//     }
//   }

//   void display(){
//     for(var x in map.keys){
//       stdout.write('$x :  ');
//       for(var y in map[x]!){
//         stdout.write('$y ');
//       }

//       print(' ');
//     }
//   }

//   void deleteNode(int data){
//     map.remove(data);

//     for(var x in map.values){
//      if(x.contains(data));
//      x.remove(data);
//     }
//   }

//   void deleteEdge(int vertex1 ,int vertex2){
//     if(map[vertex1]!.contains(vertex2)){
//       map[vertex1]!.remove(vertex2);
//     }
//   }
//   void dfs(int start){
//     Set<int> visited ={};
//     dfsHelper(start,visited);
//   }
//   void dfsHelper(int start ,Set<int> visited){
//     visited.add(start);
//     stdout.write('$start ');

//     for(var neighbour in map[start] ?? []){
//       if(!visited.contains(neighbour)){
//         dfsHelper(neighbour, visited);
//       }
//     }
//   }

//   void bfs(int start){
//     Set<int> visited  = {};
//     Queue<int> queue = Queue();

//     visited.add(start);
//     queue.add(start);

//     while(queue.isNotEmpty){
//       int curent = queue.removeFirst();
//       stdout.write('$curent ');


//       for(var neighbour in map[curent] ?? []){
//         if(!visited.contains(neighbour)){
//           visited.add(neighbour);
//           queue.add(neighbour);
//         }
//       }
//     }
//   }
// }

// void main(){
//   Graph graph =Graph();
  
//   graph.insert(3, 5, true);
//   graph.insert(3, 4, true);
//   graph.insert(5, 4, true);
//   graph.insert(5, 6, false);
// //  graph.deleteEdge(5,3);
// stdout.write('Dfs traversal :');
// graph.dfs(3);
// print('  ');

// stdout.write('Bfs traversal :');
// graph.bfs(3);
// print('  ');
//   graph.display();
// }

// import 'dart:collection';
// import 'dart:io';

// class Graph{
//   Map<int , List<int>> map = HashMap();
//   void create(int data){
//     map.addAll({data : []});

//   } 

//  void insert(int vertex ,int edge ,bool isBiDirection){
//   if(!map.containsKey(vertex)){
//     create(vertex);
//   }

//   if(!map.containsKey(edge)){
//     create(edge);
//   }

//   map[vertex]?.add(edge);
//   if(isBiDirection){
//     map[edge]?.add(vertex);
//   }
//  }

//  void display(){
//   for(var x in map.keys){
//     stdout.write('$x: ');
//     for(var y in map[x]!){
//       stdout.write('$y ');
//     }
//      print( ' ');
//   }
 
//  }

//  void deleteNode(int data){
//   map.remove(data);
//   for(var x in map.values){
//     if(x.contains(data));
//     x.remove(data);
//   }
//  }

//  void deleteEdge(int vertex1 , int vertex2){
//   if(map[vertex1]!.contains(vertex2)){
//     map[vertex1]!.remove(vertex2);
//   }
//  }

//  void dfs(int start){
//   Set<int> visited ={};
//   dfsHelper(start ,visited);
//  }
//  dfsHelper(int start,Set<int> visited){
//   visited.add(start);
//   stdout.write("$start ");

//   for(var neighbour in map[start] ?? []){
//     if(!visited.contains(neighbour)){
//       dfsHelper(neighbour, visited);
//     }
//   }
//  }
//  void bfs(int start ){
//   Set<int> visited={};
//   Queue<int> queue =Queue();

//   visited.add(start);
//   queue.add(start);

//   while(queue.isNotEmpty){
//     int current =queue.removeFirst();
//     stdout.write('$current ');

//     for( var neighbour in map[current ] ?? []){
//       if(!visited.contains(neighbour)){
//         visited.add(neighbour);
//         queue.add(neighbour);
//       }
//     }
//   }
//  }
// }
// void main(){
//   Graph graph =Graph();
//  graph.insert(3, 5, true);
//   graph.insert(3, 4, true);
//   graph.insert(5, 4, true);
//   graph.insert(5, 6, true);
//   stdout.write('Dfs traversal : ');
//   graph.dfs(3);
//   print(' ');

//   stdout.write('Bfs traversal :');
//   graph.bfs(3);
//   print(' ');
//   graph.display();
// }
import 'dart:collection';
import 'dart:io';

class Graph{
  Map<int , List<int>> map = HashMap();

  void create(int data){
    map.addAll({data : []});
  }

  void insert(int vertex ,int edge ,bool isBiDirection){
    if(!map.containsKey( vertex)){
      create(vertex);
    }

    if(!map.containsKey(edge )){
      create( edge);
    }

    map[vertex ]?.add(edge);
    if(isBiDirection){
      map[edge]?.add(vertex);
    }
  }
  void display(){
    for (var x in map.keys) {
      stdout.write('$x : ');

      for (var y in map[x]!) {
        stdout.write('$y ');
        
      }
      print('');
      
    }
  }
  void deleteNode(int data){
    map.remove(data);
    for (var x  in map.values) {
      if(x.contains(data));
      x.remove(data);
      
    }
  }

  void deleteEdge(int vertex1 , int vertex2){
    if(map[vertex1]!.contains( vertex2)){
      map[vertex1]!.remove(vertex2);
    }
  }

  void dfs(int start){
    Set<int> visited ={};
   dfsHelper(start , visited);

    
  }

  dfsHelper(int start,Set<int> visited){
    visited.add(start);
    stdout.write('$start');

    for(var neigh in map[start] ?? []){
      if(!visited.contains(neigh)){
        dfsHelper(neigh, visited);
      }
    }

  }
  void bfs(int start){
    Set<int> visited = {};
    Queue<int> queue =Queue();

    visited.add(start);
    queue.add(start);

    while(queue.isNotEmpty){
      int current = queue.removeFirst();
      stdout.write(current);
      for(var neigh in map[current] ?? []){
        if(!visited.contains(neigh)){
          visited.add(neigh);
          queue.add(neigh);
        }
      }
    }
  }
}
void main(){
  Graph graph = Graph();
  graph.insert(3, 5, true);
   graph.insert(3, 4, true);
    graph.insert(4, 5, true);
    graph.insert(5, 6, true);
    graph.display();
}