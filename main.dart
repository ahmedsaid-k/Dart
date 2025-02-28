import "dart:io";

void main() {
  myApp();
}

void myApp() {
  print('Welcome to calculator');
  int numberofoperations = 0; //***عشان احسب عدد العمليات اللي تمت***
  while (true) {
    print('choice number: ');
    print('1-operation (+).');
    print('2-operation (-).');
    print('3-operation (*).');
    print('4-operation (/).');
    print('5-Exit.');

    int? operation = int.tryParse(stdin.readLineSync()?? '');
    if (operation == 5) {
      print('Thank you for using the calculator.');
      break;
    } else if (operation != 1 && operation != 2 && operation != 3 && operation != 4 && operation != 5) {
      print('⚠️Erorr, try agan. ⚠️');
      continue;
    }

    switch (operation) {
      case 1:
        try{
        print("Enter the first number: ");
        double? first_number = double.tryParse(stdin.readLineSync() ?? '');
        print("Enter the second number: ");
        double? second_number = double.tryParse(stdin.readLineSync() ?? '');
        double result          = first_number! + second_number!;
        print("➡️Result: $first_number + $second_number = $result");
        numberofoperations++;
        print("عدد العمليات التي تمت : $numberofoperations");
        break;
        }catch(e){
          print(e);
        }
      case 2:
        try{
          print("Enter the first number: ");
          double? first_number = double.tryParse(stdin.readLineSync() ?? '');
          print("Enter the second number: ");
          double? second_number = double.tryParse(stdin.readLineSync() ?? '');
          double result          = first_number! - second_number!;
          print("➡️Result: $first_number - $second_number = $result");
          numberofoperations++;
          print("عدد العمليات التي تمت : $numberofoperations");
          break;
          }catch(e){
            print(e);
          }
      case 3:
        try{
          print("Enter the first number: ");
          double? first_number = double.tryParse(stdin.readLineSync() ?? '');
          print("Enter the second number: ");
          double? second_number = double.tryParse(stdin.readLineSync() ?? '');
          double result          = first_number! * second_number!;
          print("➡️Result: $first_number * $second_number = $result");
          numberofoperations++;
          print("عدد العمليات التي تمت : $numberofoperations");
          break;
          }catch(e){
            print(e);
          }
      case 4:
        try{
        print("Enter the first number: ");
        double? first_number = double.tryParse(stdin.readLineSync() ?? '');
        print("Enter the second number: ");
        double? second_number = double.tryParse(stdin.readLineSync() ?? '');
        if (second_number == 0) {
          print("⚠️غير مسموح بالقسمه علي رقم صفر!⚠️ ");
        } else {
          double result = first_number! / second_number!;
          print("➡️Result: $first_number / $second_number = $result");
          numberofoperations++;
          print("عدد العمليات التي تمت : $numberofoperations");
        }

        break;
        }catch(e){
            print(e);
        }
      default:
        print("⚠️Erorr.⚠️");
    }
  }
}
