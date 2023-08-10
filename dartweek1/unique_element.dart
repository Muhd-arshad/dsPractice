void main(){
List<int> arr =[3,2,3,2];
for(int i=0;i<arr.length -1;i++){
int count =0;
  for(int j=i+1;j<arr.length;j++){
   if(arr[i] == arr[j]){
     count++;
   }
  
  }
  if(count == 0){
    print(arr[i]);
    break;
  }
}

}


//  void main(List<String> args) {
   
// List<int > arr =[9,5,8,10];
// arr.sort();
// int a = arr[arr.length -1];
 
//  print(a);





// }