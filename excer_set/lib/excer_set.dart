import 'dart:math';

class Resistor {
  List<String> colorCodes = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white',
  ];
  int getColorCode(String color) {
    return colorCodes.indexOf(color.toLowerCase());
  }

  int getResistorDuo(String colorCodes) {
    var input = colorCodes.toLowerCase().split('-');
    if (input.isEmpty) return 0;

    var c1 = getColorCode(input[0]);
    var c2 = 0;

    if (input.length > 1) {
      c2 = getColorCode(input[1]);
    } else {
      return c1;
    }

    return c1 * 10 + c2;
  }
}

class Exercises1 {
  String twoFer(String name) {
    if (name.isEmpty) {
      name = 'you';
    }
    return 'One for $name, One for me.';
  }

  String revearseString(String s) {
    return s.split('').reversed.join();
  }

  bool isLeapYear(int year) {
    bool isLeapYear = false;

    isLeapYear = (year % 4 == 0);

    if (isLeapYear) {
      if (year % 100 == 0) {
        isLeapYear = false;
        if (year % 400 == 0) {
          isLeapYear = true;
        }
      }
    }
    return isLeapYear;
  }

  int scrabbleScore(String word) {
    const scores = {
      'A': 1,
      'E': 1,
      'I': 1,
      'O': 1,
      'U': 1,
      'L': 1,
      'N': 1,
      'R': 1,
      'S': 1,
      'T': 1,
      'D': 2,
      'G': 2,
      'B': 3,
      'C': 3,
      'M': 3,
      'P': 3,
      'F': 4,
      'H': 4,
      'V': 4,
      'W': 4,
      'Y': 4,
      'K': 5,
      'J': 8,
      'X': 8,
      'Q': 10,
      'Z': 10,
    };
    var l = word.split('');
    int total = 0;

    for (var c in l) {
      c = c.toUpperCase();
      total += scores[c] as int;
    }
    return total;
  }

  int scrabbleScore2(String word) {
    const scores = {
      'AEIOULNRST': 1,
      'DG': 2,
      'BCMP': 3,
      'FHVWY': 4,
      'K': 5,
      'JX': 8,
      'QZ': 10,
    };

    var res = word
        .toUpperCase()
        .split('')
        .map((c) => scores.entries.firstWhere((e) => e.key.contains(c)).value)
        .fold(0, (int pv, v) => pv + v);
    return res;
  }

  void displayBeerStrong() {
    int i;
    String cbc, nbc, bottles, oneDown;

    for (i = 99; i >= 0; i--) {
      cbc = i.toString();
      nbc = '${i - 1} bottles';
      bottles = 'bottles';
      oneDown = 'Take one down and pass it around';
      if (i == 2) {
        nbc = '1 bottle';
      }
      if (i == 1) {
        bottles = 'bottle';
        nbc = 'no more bottles';
      } else if (i == 0) {
        cbc = 'No more';
        oneDown = 'Go to the store and buy some more';
        nbc = '99 bottles';
      }

      print('$cbc $bottles of beer on the wall, $cbc $bottles of beer.');
      print('$oneDown, $nbc of beer on the wall.');
      print('');
    }
  }

  bool isArmstrongNumber(int n) {
    String sn = n.toString();

    var res = sn
        .split('')
        .map((d) => pow(int.parse(d), sn.length))
        .reduce((a, b) => a + b);

    return n == res;
  }

  bool isIsogram(String s) {
    s = s.replaceAll(RegExp('[-+()/*\$@ ]'), '');

    var cs = s.split('').toSet().join();

    return (cs.length == s.length);
  }
}

class Exercises2 {
  int differenceOfSquares(int n) {
    var numbers = List.generate(n, (i) => i + 1);
    var sqOfSum = pow(n * (n + 1) / 2, 2);

    var sumOfSqrs = numbers.fold(0, (int pv, v) => pv + pow(v, 2).toInt());

    return (sqOfSum - sumOfSqrs).toInt();
  }

  Map<String, int> wordCount(String phrase) {
    var phraseLower = phrase.toLowerCase();

    var matches = RegExp(r"(\d+|\w+'\w+|\w+)").allMatches(phraseLower);
    var words = matches.map((m) => m[0] as String);
    var count = <String, int>{};
    for (var w in words) {
      count[w] = count.containsKey(w) ? (count[w] as int) + 1 : 1;
    }

    return count;
  }

  String response(String greet) {
    greet = greet.trim();

    final containsLetter = greet.contains(RegExp(r'[a-zA-Z]+'));
    final isQuestion = greet.endsWith('?');
    final isShout = greet.toUpperCase() == greet && containsLetter;
    final isForceFulQuestion = isShout && isQuestion;
    final isSilent = greet.isEmpty;

    if (isForceFulQuestion) return "Calm down, I know what I'm doing!";
    if (isQuestion) return 'Sure.';
    if (isShout) return 'Whoa, chill out!';
    if (isSilent) return 'Fine. Be that way!';
    return 'Whatever';
  }
}

class SpaceAgePlanet {
  static const _earthAgeInSeconds = 31557600;
  static const _orbitalPeriod = {
    'mercury': 0.2408467,
    'venus': 0.61519726,
    'earth': 1.0,
    'mars': 1.8808158,
    'jupiter': 11.862615,
    'saturn': 29.447498,
    'uranus': 84.017846,
    'neptune': 164.79132,
  };

  double ageCalc({required String planetName, required int seconds}) {
    planetName = planetName.toLowerCase();
    final age =
        seconds / (_earthAgeInSeconds * (_orbitalPeriod[planetName] as double));
    return double.parse(age.toStringAsFixed(2));
  }
}

class Exercises3 {
  int hammingDistance(String strand1, String strand2) {
    int pos = 0;

    var res = strand1
        .split('')
        .map((c) => strand2[pos++] == c ? 0 : 1)
        .reduce((a, b) => a + b);

    return res;
  }

  String acronym(String acroInput) {
    var acrout = acroInput
        .split(' ')
        .map((w) => w.isEmpty ? '' : w[0])
        .join()
        .toUpperCase();
    return acrout;
  }

  String phoneNumber(String number) {
    var onlyNum = number.replaceAll(RegExp(r"[^\d]"), '');
    if (onlyNum.length > 10) {
      onlyNum = onlyNum.substring(onlyNum.length - 10);
    }
    return onlyNum;
  }

  String gigaSecond(DateTime d) {
    d = d.add(Duration(seconds: pow(10, 9).toInt()));
    return d.toString();
  }

  String rainDrops(int input) {
    bool isDivisible(int n, int m) => n % m == 0;

    String res = '';
    res += isDivisible(input, 3) ? 'Pling' : '';
    res += isDivisible(input, 5) ? 'Plang' : '';
    res += isDivisible(input, 7) ? 'Plong' : '';

    res = res.isEmpty ? input.toString() : res;

    return res;
  }

  String rnaTranscription(String dna) {
    const Map<String, String> dna2Rna = {
      'G': 'C',
      'C': 'G',
      'T': 'A',
      'A': 'U',
    };

    var rna = dna.split('').map((c) => dna2Rna[c]).join();

    return rna;
  }

  bool isAnagramInBuiltChecking(String src, String listW) {
    src = src.toLowerCase();
    listW = listW.toLowerCase();

    if (src == listW) return false;

    var a = src.split('');
    var b = listW.split('');

    a.sort();
    b.sort();

    return a.join() == b.join();
  }

  List isAnagram(String gword) {
    const List words = ['enlists', 'google', 'inlets', 'banana', 'stenil'];

    var res = words
        .where(
          (w) => isAnagramInBuiltChecking(gword, w) ? true : false,
        )
        .toList();
    return res;
  }

  List<int> primeFactors(int n) {
    var res = <int>[];
    int tmp = n;
    int i = 2;
    while (tmp > 1) {
      if (tmp % i == 0) {
        res.add(i);
        tmp = tmp ~/ i;
      } else {
        i++;
      }
    }
    return res;
  }
}
