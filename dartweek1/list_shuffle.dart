 void main(List<String> args) {
 
 String name ='arshad';
List<dynamic> reme =[];
 for(int i =0;i<name.length;i++){

  int ascii =name.codeUnitAt(i);
   int n =ascii -32;
   reme.add(n);
  

 }
 for(int j =0;j<reme.length;j++){
  String sha =String.fromCharCode(reme[j]);
  reme[j] =sha;
 }
 print(reme.join());
   
}