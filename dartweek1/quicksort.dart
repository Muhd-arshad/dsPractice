void main(){

List<int> quickSort(List<int> list){

  if(list.length <2){
    return list;
  }
  int pivot =list[list.length -1];

  List<int> left =[];
  List<int> right =[];
  
   int i =0 ;

   while(i<list.length -1){
    if(list[i] <pivot){

      left.add(list[i]);
      i++;
    }else{

      right.add(list[i]);
      i++;
    }
   }
return [...quickSort(left),pivot,...quickSort(right)];

}

List<int> list =[9,1,5,63,78];

  print(quickSort(list));


}