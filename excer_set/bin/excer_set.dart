import 'dart:io';

import 'package:excer_set/excer_set.dart';

void main(List<String> arguments) {
  // resistorIntegration();
  // twoFer();
  // reverseString();
  // isLeapYear();
  // scrabbleScore();
  // scrabbleScore2();
  // displayBeerStrong();
  // isArmstrongNumber();
  // isIsogram();
  // differenceOfSquares();
  // wordCount();
  // bobResonse();
  // spaceAge();
  // hammingDNA();
  // acronym();
  // phoneNumber();
  // gigaSecond();
  // rainDrops();
  // rnaTransciption();
  // isAnagram();
  // primeFactors();
}

int resistorIntegration() {
  stdout.write('\nEnter the value of the color code: ');

  var color = stdin.readLineSync();

  if (color == null || color.isEmpty) {
    print('Invalid Input.');
  } else {
    var r = Resistor();
    print('color code: ${r.getResistorDuo(color)}');
  }
  return 0;
}

void twoFer() {
  stdout.write('\nEnter the name: ');

  var name = stdin.readLineSync();
  if (name == null || name.isEmpty) {
    name = 'you';
  }
  var e = Exercises1();
  print(e.twoFer(name));
}

void reverseString() {
  stdout.write('\nEnter a word to get a reversed string: ');

  var s = stdin.readLineSync();
  var res = Exercises1();
  print('\n${res.revearseString(s!)}\n');
}

void isLeapYear() {
  stdout.write('\nEnter a year: ');
  var year = int.parse(stdin.readLineSync()!);

  var i = Exercises1();
  if (i.isLeapYear(year)) {
    print('\n$year is a leap year\n');
  } else {
    print('\n$year is NOT a leap year\n');
  }
}

void scrabbleScore() {
  stdout.write('\nEnter a word: ');

  var name = stdin.readLineSync();

  var e = Exercises1();
  print(e.scrabbleScore(name!));
}

void scrabbleScore2() {
  stdout.write('\nEnter a word: ');

  var name = stdin.readLineSync();

  var e = Exercises1();
  print(e.scrabbleScore2(name!));
}

void displayBeerStrong() {
  var ex = Exercises1();
  ex.displayBeerStrong();
}

void isArmstrongNumber() {
  stdout.write('Enter a number: ');
  int inputNum = int.parse(stdin.readLineSync()!);

  var ar = Exercises1();
  if (ar.isArmstrongNumber(inputNum)) {
    print('The given number $inputNum is a Armstrong number.');
  } else {
    print('The given number $inputNum is NOT a Armstrong number.');
  }
}

void isIsogram() {
  stdout.write('Enter a word: ');
  var s = stdin.readLineSync()!;

  var a = Exercises1();
  if (a.isIsogram(s)) {
    print('Yes Isogram');
  } else {
    print('Not Isogram');
  }
}

void differenceOfSquares() {
  stdout.write('Enter a Natural number: ');
  var n = int.parse(stdin.readLineSync()!);

  var d = Exercises2();
  print('\nDifferences of squares: ${d.differenceOfSquares(n)}\n');
}

void wordCount() {
  stdout.write(
      "Please enter the lines of words (* with ' ) to count the words: ");
  String phrase = stdin.readLineSync()!;
  //  '''  "That's the password: 'PASSWORD 123'!", cried the
  //     Special Agent.
  //           So I fled.   ''';
  var w = Exercises2();
  print(w.wordCount(phrase));
}

void bobResonse() {
  var greet = stdin.readLineSync()!;
  var g = Exercises2();
  print(g.response(greet));
}

void spaceAge() {
  var age = SpaceAgePlanet();
  stdout.write('\nEnter the planet name : ');
  var planetName = stdin.readLineSync()!;
  stdout.write('Enter the age in seconds : ');
  var ageInSeconds = int.parse(stdin.readLineSync()!);

  print(
      '${age.ageCalc(planetName: planetName, seconds: ageInSeconds)} is your Age in $planetName');
}

void hammingDNA() {
  String strand1, strand2;

  strand1 = 'GAGCCTACTAACGGGAT';
  strand2 = 'CATCGTAATGACGGCCT';
  // stdout.write('\nEnter the STRAND 1 (*17 characters) : ');
  // strand1 = stdin.readLineSync()!.toUpperCase();
  // stdout.write('Enter the STRAND 2 (*17 characters) : ');
  // strand2 = stdin.readLineSync()!.toUpperCase();

  var st = Exercises3();
  print('Hamming Distance is ${st.hammingDistance(strand1, strand2)}');
}

void acronym() {
  stdout.write('Enter the words: ');
  var acroInput = stdin.readLineSync()!;
  var a = Exercises3();
  print(a.acronym(acroInput));
}

void phoneNumber() {
  String number = '+1 (613)-995-0253';
  var n = Exercises3();
  print('$number number is equal ${n.phoneNumber(number)}');
}

void gigaSecond() {
  DateTime date = DateTime.parse('1994-03-20 10:00');
  var da = Exercises3();
  print(da.gigaSecond(date));
}

void rainDrops() {
  stdout.write('Enter a number to get the rain drops : ');
  var input = int.parse(stdin.readLineSync()!);
  var r = Exercises3();
  var methodReturn = r.rainDrops(input);
  var che = int.tryParse(methodReturn);

  if (che != null) {
    print(' ${r.rainDrops(input)} is NOT MAKING rain Drops Sound');
  } else {
    print(' ${r.rainDrops(input)} is the rain Drops Sound for the number');
  }
}

void rnaTransciption() {
  stdout.write('\nEnter the DNA Strand (*17 characters): ');
  var dna = stdin.readLineSync()!.toUpperCase();
  // String dna = 'GAGCCTACGAACGGGAT';
  var r = Exercises3();
  print('DNA: $dna\nRNA: ${r.rnaTranscription(dna)}');
}

void isAnagram() {
  stdout.write('Enter a word to check isAnagram: ');
  var gword = stdin.readLineSync()!;
  var a = Exercises3();

  var isAn = a.isAnagram(gword);

  if (isAn.isEmpty) {
    print('$gword is NOT an Anagram');
  } else {
    print('$gword is an Anagram => ${a.isAnagram(gword)}');
  }
}

void primeFactors() {
  stdout.write('Enter a natural number to find prime factors : ');
  var n = int.tryParse(stdin.readLineSync()!);
  var p = Exercises3();
  print(' Prime Factors of $n is ${p.primeFactors(n!)}');
}
