import 'dart:io';

// void main(){
//   void maina(a,b){
//     stdout.write("${b} and ${a}");
//   }
//   maina(5, 6);
// }

void main(){
  abc ab = abc();
  ab.oddEvn();
  ab.abd();
}
class abc {

  void abd(){
    try {
      int.parse("abc");
    } on FormatException {
      print("Invalid number format");
    }

    
    int total = 10 + 20;
    print(total * 2); // logic mistake
    print("object");
  }
  void oddEvn(){
    try{
      stdout.write("Please Enter Your Number");
      int num = int.parse(stdin.readLineSync()!);
      if(num > 90){
        print("bike");
      }
      else if(num > 70){
        print("Laptop");
      }
      else if(num > 60){
        print("phone");
      }
      else{
        print("kuch nahi mile ga");
      }
    }catch(e,s){
      print("Print Error: ${e}");
      print("Stack Trace: $s");
    }

  }




}