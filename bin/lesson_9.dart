import 'dart:io';
import 'dart:math';

void main() {
  double usd = 87;
  double kzt = 0.17;
  double eur = 92;
  double rub = 1.17;
  double chin = 12;
  double dirham = 23;

  print(
      'Доброе пожаловать!\n Курс на сегодня: \nUSD -$usd \nKZT -$kzt \nEUR - $eur \nRUB - $rub  \nYUAN -$chin \nDIRKHAM -$dirham');
  print(
      '1) Хотите обменять другую валюту на сом? \n2) Хотите обменять сом на другую валюту?');
  String choice = stdin.readLineSync()!;
  if (choice == '1') {
    print('Покупка');
    print('Выберите валюту \nUSD\nKZT\nEUR\nRUB\nCHIN\nDIRHAM');
    String valuta = stdin.readLineSync()!;
    if (valuta == 'USD' || valuta == 'usd') {
      calc(usd);
    } else if (valuta == 'KZT' || valuta == 'kzt') {
      calc(kzt);
    } else if (valuta == 'EUR' || valuta == 'eur') {
      calc(eur);
    } else if (valuta == 'RUB' || valuta == 'rub') {
      calc(rub);
    } else if (valuta == 'CHIN' || valuta == 'chin') {
      calc(chin);
    } else if (valuta == 'DIRHAM' || valuta == 'dirham') {
      calc(dirham);
    } else {
      print('Не правальный ввод');
    }
  } else if (choice == '2') {
    print('Продажа');
    print('Выберите валюту \nUSD\nKZT\nEUR\nRUB\nCHIN\nDIRHAM');
    String valuta = stdin.readLineSync()!;
    if (valuta == 'USD' || valuta == 'usd') {
      calc1(usd);
    } else if (valuta == 'KZT' || valuta == 'kzt') {
      calc1(kzt);
    } else if (valuta == 'EUR' || valuta == 'eur') {
      calc1(eur);
    } else if (valuta == 'RUB' || valuta == 'rub') {
      calc1(rub);
    } else if (valuta == 'CHIN' || valuta == 'chin') {
      calc1(chin);
    } else if (valuta == 'DIRHAM' || valuta == 'dirham') {
      calc1(dirham);
    } else {
      print('Неправильный ввод');
    }
  } else {
    print('Ошибка');
  }
}

void calc(double currency) {
  print('Введите сумму');
  int summ = int.parse(stdin.readLineSync()!);
  print(summ * currency);
}

void calc1(double currency) {
  print('Введите сумму');
  int summ = int.parse(stdin.readLineSync()!);
  print(summ / currency);
}
