void main(){
  String changeString(String text, int value){
    List<String> newstring =[];
    int i=0;
    while(i<text.length){
      int asci=text.codeUnitAt(i);
      int newascii =asci+value;
      if(newascii>122){
        newascii =96+(newascii-122);
        String newletter =String.fromCharCode(newascii);
        newstring.add(newletter);
        i++;
      }else{
        String newletter =String.fromCharCode(newascii);
        newstring.add(newletter);
        i++;
      }
    }
    return newstring.join('');
  }
  print(changeString('arshad', 6));
}