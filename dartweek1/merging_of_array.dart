// void main(){
//   List<int> a =[1,2,3,4,5];
//   List<int> b =[6,7,8,9];
//   List<int> c =[];
//   int sum =0;
//   int n1 =a.length;
//   int n2 =b.length;
//     double avg;
//   int totallength=n1+n2;
//    for(int i=0;i<n1;i++){
//      c[i]=a[i];
//    }
//   for(int j=0;j<n2;j++){
//     c[j+n1]=b[j];
//   }
//   for(int k=0;k<totallength;k++){
//     sum=sum+c[k];
//   }
//    avg =sum/totallength;
//   print (avg);
  
// }
void main(){
  List<int> a=[1,2,3,4,5];
  List <int> b =[6,7,8,9];
  int n1 =a.length;
  int n2 =b.length;
  int total =n1+n2;
  double sum=0;

  for(int i=0;i<n2;i++){
    a[n1+i]=b[i];
  }
  for(int j=0;j<total;j++){
    sum =sum+a[j];
  }
  double avg =sum/total;
  print(avg);


}