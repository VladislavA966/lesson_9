import 'dart:async';
import 'dart:io';

void main() {
  var usd = 87;
  var kzt = 0.17;
  var eur = 92;
  var rub = 1.17;

  print(
      'Доброе пожаловать!\n Курс на сегодня: \nUSD -$usd \nKZT -$kzt \nEUR - $eur \nRUB - $rub');
  print(
      '1) Хотите обменять другую валюту на сом? \n2) Хотите обменять сом на другую валюту?');
  String choice = stdin.readLineSync()!;
  if (choice == '1') {
    print('Покупка');
    print('Выберите валюту \nUSD\nKZT\nEUR\nRUB');
    String valuta = stdin.readLineSync()!;
    if (valuta == 'USD') {
      print('Введите сумму');
      int summ = int.parse(stdin.readLineSync()!);
      print(summ * usd);
    } else if (valuta == 'KZT') {
      print('Введите сумму');
      int summ = int.parse(stdin.readLineSync()!);
      print(summ * kzt);
    } else if (valuta == 'EUR') {
      print('Введите сумму');
      int summ = int.parse(stdin.readLineSync()!);
      print(summ * eur);
    } else if (valuta == 'RUB') {
      print('Введите сумму');
      int summ = int.parse(stdin.readLineSync()!);
      print(summ * rub);
    } else {
      print('Не правильный ввод');
    }
  } else if (choice == '2') {
    print('Продажа');
    print('Выберите валюту \nUSD\nKZT\nEUR\nRUB');
    String valuta = stdin.readLineSync()!;
    if (valuta == 'USD') {
      print('Введите сумму');
      int summ = int.parse(stdin.readLineSync()!);
      print((summ / usd).round());
    } else if (valuta == 'KZT') {
      print('Введите сумму');
      int summ = int.parse(stdin.readLineSync()!);
      print((summ / kzt).round());
    } else if (valuta == 'EUR') {
      print('Введите сумму');
      int summ = int.parse(stdin.readLineSync()!);
      print((summ / eur).round());
    } else if (valuta == 'RUB') {
      print('Введите сумму');
      int summ = int.parse(stdin.readLineSync()!);
      print((summ / rub).round());
    } else {
      print('Не правильный ввод');
    }
  } else {
    print('Ошибка');
  }
}
