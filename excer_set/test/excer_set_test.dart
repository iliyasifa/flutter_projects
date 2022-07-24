import 'package:excer_set/excer_set.dart';
import 'package:test/test.dart';

void main() {
  test('Resistor color code Test', () {
    var r = Resistor();
    expect(r.getColorCode('black'), 0);
    expect(r.getColorCode('blue'), 6);
    expect(r.getColorCode('white'), 9);
  });

  test('Resistor Duo Test', () {
    var r = Resistor();
    expect(r.getResistorDuo('brown-green'), 15);
    expect(r.getResistorDuo('brown-green-voilet'), 15);
    expect(r.getResistorDuo('green'), 5);
  });

  test('TwoFer Test', () {
    var e = Exercises1();
    expect(e.twoFer('Iliyas'), 'One for Iliyas, One for me.');
    expect(e.twoFer('Maryam'), 'One for Maryam, One for me.');
    expect(e.twoFer(''), 'One for you, One for me.');
  });

  test('Reverse String Test', () {
    var ex = Exercises1();
    expect(ex.revearseString('cool'), 'looc');
    expect(ex.revearseString('ramu'), 'umar');
  });

  test('Leap Year Test', () {
    var l = Exercises1();
    expect(l.isLeapYear(1996), true);
    expect(l.isLeapYear(1997), false);
    expect(l.isLeapYear(1900), false);
    expect(l.isLeapYear(2000), true);
  });

  test('Scrabble Score Test', () {
    var s = Exercises1();
    expect(s.scrabbleScore('cabbage'), 14);
    expect(s.scrabbleScore('aaa'), 3);
    expect(s.scrabbleScore('qz'), 20);
  });

  test('Scrabble Score Test2', () {
    var s = Exercises1();
    expect(s.scrabbleScore2('cabbage'), 14);
    expect(s.scrabbleScore2('aaa'), 3);
    expect(s.scrabbleScore2('qz'), 20);
  });

  test('Armstrong Number Test', () {
    var ex = Exercises1();
    expect(ex.isArmstrongNumber(154), false);
    expect(ex.isArmstrongNumber(153), true);
    expect(ex.isArmstrongNumber(96), false);
  });

  test('Isogram Test', () {
    var s = Exercises1();
    expect(s.isIsogram('lumberjacks'), true);
    expect(s.isIsogram('background'), true);
    expect(s.isIsogram('downstream'), true);
    expect(s.isIsogram('six-year-old'), true);
  });

  test('Differences of Squares', () {
    var d = Exercises2();
    expect(d.differenceOfSquares(10), 2640);
    expect(d.differenceOfSquares(15), 13160);
    expect(d.differenceOfSquares(20), 41230);
    expect(d.differenceOfSquares(5), 170);
  });

  test('Word Count Test', () {
    var w = Exercises2();
    expect(
        w.wordCount(
            '''That's the password: 'PASSWORD 123'!", cried the Special Agent.So I fled.'''),
        {
          'that\'s': 1,
          'the': 2,
          'password': 2,
          '123': 1,
          'cried': 1,
          'special': 1,
          'agent': 1,
          'so': 1,
          'i': 1,
          'fled': 1,
        });
  });

  test('Bob Response Test', () {
    var g = Exercises2();
    expect(g.response('How are you?'), 'Sure.');
    expect(g.response('HOW ARE YOU'), 'Whoa, chill out!');
    expect(g.response('HOW ARE YOU?'), "Calm down, I know what I'm doing!");
    expect(g.response(''), 'Fine. Be that way!');
    expect(g.response('Link IS noT'), 'Whatever');
  });

  test('Space Age Calculation', () {
    var s = SpaceAgePlanet();
    expect(s.ageCalc(planetName: 'Mercury', seconds: 1000000000), 131.57);
    expect(s.ageCalc(planetName: 'Earth', seconds: 1000000000), 31.69);
    expect(s.ageCalc(planetName: 'Neptune', seconds: 1000000000), 0.19);
    expect(s.ageCalc(planetName: 'Venus', seconds: 1000000000), 51.51);
  });

  test('Hamming Distance of DNA', () {
    var h = Exercises3();
    expect(h.hammingDistance('GAGCCTACTAACGGGAT', 'CATCGTAATGACGGCCT'), 7);
  });

  test('Acronyms Getting', () {
    var a = Exercises3();
    expect(a.acronym('Portable      network graphics'), 'PNG');
    expect(a.acronym('Techies love their'), 'TLT');
  });

  test('Phone number filtering', () {
    var p = Exercises3();
    expect(p.phoneNumber('+1 (613)-995-0253'), '6139950253');
    expect(p.phoneNumber('613-995-0253'), '6139950253');
    expect(p.phoneNumber('1 613 995 0253'), '6139950253');
    expect(p.phoneNumber('613.995.0253'), '6139950253');
  });

  test('Giga Second Calculating date', () {
    var g = Exercises3();
    expect(
      g.gigaSecond(DateTime.parse('1994-03-20 10:00')),
      '2025-11-26 11:46:40.000',
    );
    // expect(
    //   g.gigaSecond(DateTime.now()),
    //   '2025-11-26 11:46:40.000',
    // );
  });

  test('Rain Drops', () {
    var r = Exercises3();
    expect(r.rainDrops(28), 'Plong');
    expect(r.rainDrops(30), 'PlingPlang');
    expect(r.rainDrops(289), '289');
    expect(r.rainDrops(34), '34');
  });

  test('RNA Transcription', () {
    var r = Exercises3();
    expect(r.rnaTranscription('GAGCCTACGAACGGGAT'), 'CUCGGAUGCUUGCCCUA');
    expect(r.rnaTranscription('CATCGTAATGACGGCCT'), 'GUAGCAUUACUGCCGGA');
  });

  test('Anagram Checking', () {
    var a = Exercises3();
    expect(a.isAnagram('listen'), ['inlets', 'stenil']);
  });

  test('Prime Factor', () {
    var p = Exercises3();
    expect(p.primeFactors(60), [2, 2, 3, 5]);
    expect(p.primeFactors(58), [2, 29]);
    expect(p.primeFactors(35), [5, 7]);
  });
}
