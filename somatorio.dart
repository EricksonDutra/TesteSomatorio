import 'dart:io';

void main() {
  print("Entre com um número e descubra seu somatório: ");
  try {
    var input = stdin.readLineSync();
    print(toSumMultipleOfFiveAndThree(input));
  } on FormatException {
    print("O valor deve ser inteiro.");
  }
}

int toSumMultipleOfFiveAndThree(input) {
  List<int> multiples = [];
  var result;
  int value = int.parse(input.toString());

  for (int i = 0; i < value; i++) {
    if ((i % 3 == 0) || (i % 5 == 0)) {
      multiples.add(i);
    }
  }

  result = multiples.reduce((value, element) => value + element);
  return result;
}
