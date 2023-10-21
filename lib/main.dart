import 'dart:io';

void main() {
  //This Code is used to Solve Linear Equation
  print('********************************************************');
  print('*****SOLUTION TO LINEAR EQUATIONS OF TWO VARIABLES******');
  print('**************Matthew Miracle Chinedum******************');
  print(''); //This line gives a space before the inputs
  print(
      'WELCOME! This Program helps you to solve your linear Equations of two variables');
  print('Please Enter Your Name: ');
  var name = stdin.readLineSync();
  print('');
  print('Hello $name Lets Begin');
  print('');
  LinearEquation();
}

LinearEquation() {
  print('Enter a1:');
  var a1 = int.parse(stdin.readLineSync()!);

  print('Enter b1:');
  var b1 = int.parse(stdin.readLineSync()!);

  print('Enter a2:');
  var a2 = int.parse(stdin.readLineSync()!);

  print('Enter b2:');
  var b2 = int.parse(stdin.readLineSync()!);

  print('Enter c1:');
  var c1 = int.parse(stdin.readLineSync()!);

  print('Enter c2:');
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
