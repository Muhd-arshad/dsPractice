void main() {
  int temp;
  List<int> list = [9, 7, 8, 5, 6];

  for (int i = 1; i < list.length; i++) {
    int j = i - 1;

    while (j >= 0 && list[j] > list[j + 1]) {
      temp = list[j];
      list[j] = list[j + 1];
      list[j + 1] = temp;
      j--;
    }
  }
  print(list);
}
