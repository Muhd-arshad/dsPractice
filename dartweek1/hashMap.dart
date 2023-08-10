class Hashmap {
  List<dynamic> list = [
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null
  ];

  int findex(String str) {
    int ascci = 0;
    for (int i = 0; i < str.length; i++) {
      int a = str.codeUnitAt(i);
      ascci = ascci + a;
     
    }

    int result = ascci % list.length;
  

    return result;
  }

  void add(String str) {
    int index = findex(str);
    list[index] = str;
  }

  void display() {
    for (int i = 0; i < list.length; i++) {
      
        print(list[i]);
    
    }
  }
}

void main() {
  Hashmap hashmap = Hashmap();
  hashmap.add('arshad');
  hashmap.add('ashique');
  hashmap.add('ramees');

  hashmap.display();
}
