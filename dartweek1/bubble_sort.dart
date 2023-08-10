void main(){

List<int> list =[8,4,3,12,10,13,7,11];

for(int i=0 ;i< list.length ;i++){

  for(int j=0 ;j<list.length -i -1;j++){

    if(list[j]  > list[j+1]){
int temp =list[j];
list[j] =list[j+1];
list[j+1] =temp;

    }
  }
}
print(list);



}