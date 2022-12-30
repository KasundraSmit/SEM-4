import 'dart:io';

void main(List<String> args) {
  List<int> list = [];

  for (var i = 1; i <= 5; i++) {
    print("Enter Number $i");
    list.add(int.parse(stdin.readLineSync()!));
  }
  list.sort(
    (a, b) => a.compareTo(b),
  );
  print("Sorted List : ");
  for (var i = 0; i < 5; i++) {
    stdout.write("${list[i]}  ");
  }
}