import 'dart:math';

class Calculator {
  Calculator({
    this.height,
    this.weight,
    this.sex,
    this.age,
  });

  final int height;
  final int weight;
  final int sex;
  final int age;

  double _imc;
  double _img;

  String calculateBmi() {
    _imc = weight / pow(height / 100, 2);
    return _imc.toStringAsFixed(1);
  }

  String calculateImg() {
    _img = (1.2 * _imc) -
        (10.8 * sex) +
        (0.23 * age) -
        5.4 * (1000.1 / (25.5 * 25.5));
    return _img.toStringAsFixed(1);
  }

  String getResult() {
    if (_imc >= 25) {
      return 'Acima do Peso'.toUpperCase();
    } else if (_imc > 18.5) {
      return 'Peso Normal'.toUpperCase();
    } else {
      return 'Abaixo do Peso'.toUpperCase();
    }
  }

  String getInterpretation() {
    if (_imc >= 25) {
      return 'Você tem um peso acima do normal !!!';
    } else if (_imc >= 18.5) {
      return 'Você tem um peso normal, coma muita picanha, com cerveja !!!';
    } else {
      return 'Você esta abaixo do peso.. magrela!!!';
    }
  }
}
