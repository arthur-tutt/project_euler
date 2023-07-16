import 'package:flutter/widgets.dart';

class ProblemFour extends StatelessWidget {
  const ProblemFour({
    Key? key,
  }) : super(key: key);

// A palindromic number reads the same both ways. The largest palindrome made from the
//product of two 2-digit numbers is 9009 = 91 x 99
// Find the largest palindrome made from the product of two 3-digit numbers.
//

  @override
  Widget build(BuildContext context) {
    int num1 = 0;
    int num2 = 0;
    int counter = 0;

    // int product = 10101;
    // int productLength = product.toString().length;
    List<String> productList = [];
    List<int> pallendromeList = [];

    for (num1 = 999; num1 >= 100; num1--) {
      for (num2 = 999; num2 >= 100; num2--) {
        int product = num1 * num2;
        productList = product.toString().split('');

        // for (int i = 0; i < productLength; i++) {
        //   productList = product.toString().split('');
        // }

        if (productList.length % 2 == 0) {
          counter = 0;
          for (int j = 0; j < productList.length / 2; j++) {
            if (productList[j] == productList[productList.length - 1 - j]) {
              counter++;
            }
          }
          if (counter == productList.length / 2) {
            if (pallendromeList.isEmpty) {
              pallendromeList.add(product);
            } else if (pallendromeList.length == 1 &&
                product > pallendromeList[0]) {
              pallendromeList.remove(pallendromeList[0]);
              pallendromeList.add(product);
            }
            // return Text(
            //     '#4 Largest Palindrome Product: Num1: $num1, Num2: $num2, Product: $product');
          }
        } else {
          counter = 0;
          for (int j = 0; j < (productList.length - 1) / 2; j++) {
            if (productList[j] == productList[productList.length - 1 - j]) {
              counter++;
            }
          }

          if (counter == (productList.length - 1) / 2) {
            if (pallendromeList.isEmpty) {
              pallendromeList.add(product);
            } else if (pallendromeList.length == 1 &&
                product > pallendromeList[0]) {
              pallendromeList.remove(pallendromeList[0]);
              pallendromeList.add(product);
            }

            // return Text(
            //     '#4 Largest Palindrome Product: Num1: $num1, Num2: $num2, Product: $product');
          }
        }
      }
    }

    return Text('#4 Largest Palindrome: $pallendromeList - Correct!');
  }
}
