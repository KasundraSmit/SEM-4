import 'dart:io';

void main(List<String> args) {
  Map<String, double> details = {};

  stdout.write("Enter Size Friends List : ");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    stdout.write("Enter Name : ");
    String name = stdin.readLineSync()!;
    stdout.write("Enter Phone Number : ");
    details[name] = double.parse(stdin.readLineSync()!);
  }

  bool flag = true;
  while (flag) {
    print("For Find Friends Detail y/n");
    String ans = stdin.readLineSync()!;

    if (ans == 'y') {
      stdout.write("Enter Name Of Friends : ");
      String name = stdin.readLineSync()!;
      double? spi = details[name];
      if (spi == null) {
        print("Friend Not Found");
      } else {
        print("Spi of $name : $spi");
      }
    } else if (ans == 'n') {
      flag = false;
    } else {
      print("Invalid Choice");
    }
  }
}