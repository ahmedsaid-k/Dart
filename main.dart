import "dart:io";

void main() {
  print("Enter your name: ");
  var name = stdin.readLineSync();
  myApp(name);
}

void myApp(name) {
  print('Welcome $name to calculetor');
  int rundom = 0; //***عشان احسب عدد العمليات اللي تمت***
  while (true) {
    print('choce number: ');
    print('1-oper (+).');
    print('2-oper (-).');
    print('3-oper (*).');
    print('4-oper (/).');
    print('5-exit.');

    int opr = int.parse(stdin.readLineSync()!);
    if (opr == 5) {
      print('done.');
      break;
    } else if (opr != 1 && opr != 2 && opr != 3 && opr != 4 && opr != 5) {
      print('⚠️erorr, try agan. ⚠️');
      continue;
    }

    switch (opr) {
      case 1:
        print("Enter one number: ");
        double num1 = double.parse(stdin.readLineSync()!);
        print("Enter two number: ");
        double num2 = double.parse(stdin.readLineSync()!);
        double res = num1 + num2;
        print("➡️Result: $num1 + $num2 = $res");
        rundom++;
        print(rundom);
        break;

      case 2:
        print("Enter one number: ");
        double num1 = double.parse(stdin.readLineSync()!);
        print("Enter two number: ");
        double num2 = double.parse(stdin.readLineSync()!);
        double res = num1 - num2;
        print("➡️Result: $num1 - $num2 = $res");
        rundom++;
        print(rundom);
        break;
      case 3:
        print("Enter one number: ");
        double num1 = double.parse(stdin.readLineSync()!);
        print("Enter two number: ");
        double num2 = double.parse(stdin.readLineSync()!);
        double res = num1 * num2;
        print("➡️Result: $num1 * $num2 = $res");
        rundom++;
        print(rundom);
        break;
      case 4:
        print("Enter one number: ");
        double num1 = double.parse(stdin.readLineSync()!);
        print("Enter two number: ");
        double num2 = double.parse(stdin.readLineSync()!);
        if (num2 == 0) {
          print("⚠️غير مسموح بالقسمه علي رق صفر!⚠️ ");
        } else {
          double res = num1 / num2;
          print("➡️Result: $num1 / $num2 = $res");
          rundom++;
          print(rundom);
        }

        break;
      default:
        print("⚠️erorr.⚠️");
    }
  }
}
