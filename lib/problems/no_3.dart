import 'package:flutter/widgets.dart';

class ProblemThree extends StatelessWidget {
  const ProblemThree({
    Key? key,
  }) : super(key: key);

// The prime factors of 13195 are 5, 7, 13 and 29
// What is the largest prime factor of the number 600851475143?
//
//
//

  @override
  Widget build(BuildContext context) {
    List<int> allFactors = [];
    List<int> nonPrimeFactors = [];
    List<int> primeFactors = [];
    List<int> biggestPrimeFactor = [];
    // double bigNumber = 7000000002;
    double bigNumber = 600851475143;

    for (int a = 2; a < bigNumber; a++) {
      while (bigNumber % a == 0) {
        bigNumber = bigNumber / a;
      }
    }

    // for (int a = 2; a < 10; a++) {
    //   while (bigNumber % a == 0) {
    //     bigNumber = bigNumber / a;
    //   }
    // }

    // for (int i = 1; i <= bigNumber; i += 2) {
    //   if (bigNumber % i == 0) {
    //     allFactors.add(i);
    //   }
    // }

    // for (int j = 0; j < allFactors.length; j++) {
    //   for (int k = 2; k < allFactors[j]; k++) {
    //     if (allFactors[j] % k == 0) {
    //       nonPrimeFactors.add(allFactors[j]);
    //       break;
    //     }
    //   }
    // }

    // primeFactors = allFactors;

    // for (int l = 0; l < primeFactors.length; l++) {
    //   for (int m = 0; m < nonPrimeFactors.length; m++) {
    //     if (primeFactors[l] == nonPrimeFactors[m]) {
    //       primeFactors.remove(primeFactors[l]);
    //       break;
    //     }
    //   }
    // }

    return Text('#3 Largest Prime Factor: $bigNumber - Correct! ');
    // \n Non-Prime Factors: $nonPrimeFactors
    // \n  All Factors: $allFactors \n Non-Prime Factors: $nonPrimeFactors \n Prime Factors: $primeFactors
  }
}
