//["5","2","c","d","+"]

void main(){
  var arr=['2','5','a','b','+'];
  var st=[];
  var st2=[];
  
  for(var val in arr){
    if(int.tryParse(val)!=null){
      st.add(int.parse(val));
    }
    else if(val=='a'){
      var temp=st.removeLast();
      st2.add(temp);
    }
    else if(val=='b'){
      var temp=st2.last;
      st2.add(temp*2);
    }
    else if(val=='+'){
      num count=0;
      for(var t in st2){
        count=count+t;
      }
      st2.add(count);
    }
  }
  print(st2);
}