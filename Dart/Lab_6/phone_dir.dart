import 'dart:io';

void main(List<String> args) {
  Map<String, dynamic> map = {};

  stdout.write("Enter Size Of Contact List");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    stdout.write("Enter Name : ");
    String name = stdin.readLineSync()!;
    stdout.write("Enter Phone Number : ");
    map[name] = int.parse(stdin.readLineSync()!);
  }

  bool flag = true;
  while (flag) {
    print("For Find Contact y/n");
    String ans = stdin.readLineSync()!;

    if (ans == 'y') {
      stdout.write("Enter Name Of Contact : ");
      String name = stdin.readLineSync()!;
      int? phNum = map[name];
      if (phNum == null) {
        print("Contact Not Found");
      } else {
        print("Phone Number : $phNum");
      }
    } else if (ans == 'n') {
      flag = false;
    } else {
      print("Invalid Choice");
    }
  }
}