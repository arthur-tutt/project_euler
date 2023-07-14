import 'package:flutter/widgets.dart';

class ProblemTwo extends StatelessWidget {
  const ProblemTwo({
    Key? key,
  }) : super(key: key);

// Each new term in the Fibonacci sequence is generated by adding the previous two terms.
// By starting with 1 and 2, the first 10 terms will be: 1, 2, 3, 5 , 8, 13, 21, 34, 55, 89...
// By considering the terms in the Fibonacci sequence whose values do not exceed four million,
// find the sum of the even-valued terms.
//

  @override
  Widget build(BuildContext context) {
    int fibonacciNum1 = 1;
    int fibonacciNum2 = 2;
    int sumOfEvenFibonacci = 2;

    for (int fibonacciNum3 = 3;
        fibonacciNum3 < 4000000;
        fibonacciNum3 = fibonacciNum2 + fibonacciNum1) {
      fibonacciNum2 = fibonacciNum2 + fibonacciNum1;
      fibonacciNum1 = fibonacciNum3 - fibonacciNum1;
      if (fibonacciNum2 % 2 == 0) {
        sumOfEvenFibonacci += fibonacciNum2;
      }
    }
    return Text('#2 Even Fibonacci Numbers: $sumOfEvenFibonacci - Correct!');
  }
}
