void main(){List<int> numbers = [1, 2, 3, 4, 3, 3, 3, 2, 2, 2];
List<int> uniqueNumbers = [];

for (int i = 0; i < numbers.length; i++) {
  if (!uniqueNumbers.contains(numbers[i])) {
    uniqueNumbers.add(numbers[i]);
  }
}

print(uniqueNumbers);}