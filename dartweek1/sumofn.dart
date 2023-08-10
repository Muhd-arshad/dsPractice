



void main(){
  int sumArray(List<int> arr, int index) {
  if (index >= arr.length) {
    return 0;
  } else {
    return arr[index] + sumArray(arr, index + 1);
  }
}
List<int> arr = [1, 2, 3, 4, 5];
int result = sumArray(arr, 0);
print(result);
}
