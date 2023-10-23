import 'dart:io';

void main() {
  //This Code is used to Solve Linear Equation
  print('*****************************************************************');
  print('***SOLUTION TO SIMULTANEOUS EQUATIONS OF TWO UNKNOWN VARIABLES***');
  print('*******************Matthew Miracle Chinedum**********************');
  print(''); //This line gives a space before the inputs
  print(
      'WELCOME! This Program helps you to solve your simultenous linear Equations of two unknown variables\n');
  print('Please Enter Your Name: ');
  var name = stdin.readLineSync();
  print('');
  print('Hello $name Lets Begin');
  print('');
  LinearEquation();
}

LinearEquation() {
  print('Enter a1: (NB: coefficient of X in the first Equation)');
  var a1 = int.parse(stdin.readLineSync()!);

  print('Enter b1: (NB: coefficient of Y in the first Equation)');
  var b1 = int.parse(stdin.readLineSync()!);

  print('Enter a2: (NB: coefficient of X in the second Equation)');
  var a2 = int.parse(stdin.readLineSync()!);

  print('Enter b2: (NB: coefficient of X in the second Equation)');
  var b2 = int.parse(stdin.readLineSync()!);

  print('Enter c1: (NB: constant in the first equation)');
  var c1 = int.parse(stdin.readLineSync()!);

  print('Enter c2: (NB: constant in the second equation)');
  var c2 = int.parse(stdin.readLineSync()!);

  var det = a1 * b2 - a2 * b1;
  if (det != 0) {
    var x = (a1 * c2 - c1 * a1) / det;
    var y = (c1 * b2 - c2 * b1) / det;

    print('The value of X is $x \n The value of Y is $y');
  } else {
    print('The Linear Equation does not have a solution');
  }
  continueOption();
}

continueOption() {
  //The function calls up the option to continue or stop
  print('Do you wish to continue? (yes/no)');
  var option = stdin.readLineSync();
  if (option == "yes") {
    LinearEquation();
  } else if (option == 'no') {
    print('Thank you for your time. Have a blessed day');
  } else {
    print('Oops! Please input the right option and continue');
    continueOption();
  }
}
