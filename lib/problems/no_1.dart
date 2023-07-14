import 'package:flutter/widgets.dart';

class ProblemOne extends StatelessWidget {
  const ProblemOne({
    Key? key,
  }) : super(key: key);

// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
// The sum of these multiples is 23.
// Find the sum of all the multiples of 3 or 5 below 1000.

  @override
  Widget build(BuildContext context) {
    int sumOfMultiples = 0;

    for (int i = 0; i < 1000; i++) {
      if (i % 3 == 0 || i % 5 == 0) {
        sumOfMultiples += i;
      } else if (i % 15 == 0) {
        sumOfMultiples -= i;
      }
    }

    return Text('#1 Multiples of 3 and 5: $sumOfMultiples - Correct!');
  }
}
