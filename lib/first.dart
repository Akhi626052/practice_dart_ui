import 'dart:io';

void main(){
  stdout.write("Enter a choice: ");
  int choice = int.parse(stdin.readLineSync()!);
  switch(choice){
    case 1:
      stdout.write("Enter First Number");
      int num1 = int.parse(stdin.readLineSync()!);
      stdout.write("Enter Second Number");
      int num2 = int.parse(stdin.readLineSync()!);
      int sum = num1+num2;
      print(sum);
      break;
    case 2:
      stdout.write("Enter First Number");
      int num1 = int.parse(stdin.readLineSync()!);
      stdout.write("Enter Second Number");
      int num2 = int.parse(stdin.readLineSync()!);
      int sum = num1*num2;
      print(sum);

    case 3:
      stdout.write("Enter First Number");
      int num1 = int.parse(stdin.readLineSync()!);
      stdout.write("Enter Second Number");
      int num2 = int.parse(stdin.readLineSync()!);
      int sum = num1 ~/ num2;
      print(sum);
      break;
    case 4:
      stdout.write("Enter First Number");
      int num1 = int.parse(stdin.readLineSync()!);
      stdout.write("Enter Second Number");
      int num2 = int.parse(stdin.readLineSync()!);
      int sum = num1 ~/ num2;
      print(sum);
      break;
    default:
      print('Enter a proper choice to execute the program');
  }
}
// void main() {
//   stdout.write("Enter your name");
//   String name = stdin.readLineSync()!;
//   print(name.length);
//   print(name.isEmpty);
//   print(name.isNotEmpty);
//  // const int num1 = 13;
//  // print(num1);
// }

// void main(){
//   var ram = 20;
//   var shyam = 40;
//   var sum = ram + shyam;
//   print(sum);
// }
// void main(){
//   stdout.write("Enter your first number: ");
//   int num1 = int.parse(stdin.readLineSync()!);
//   stdout.write("Enter your second value: ");
//   int num2 = int.parse(stdin.readLineSync()!);
//   int sum = num1 + num2;
//   stdout.write('num 1 and num 2 value of sum $sum');
// }

// void main(){
//   print('Hello World--');
//   stdin.readLineSync();
//   stdout.write('--Hello World');
// }
// "talent@codknox.com" <talent@codknox.com>