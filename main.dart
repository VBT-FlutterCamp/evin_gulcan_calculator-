import 'dart:io';

import 'calculator_class.dart';

void main() {
  print("\r   Hesap Makinası  \r");
  print("------------------------------------\n");

  // Kullanııcıdan birinci sayıyı girmesini istiyoruz.
  print("Birinci sayiyi giriniz :");
  final double sayi1 = double.parse(stdin.readLineSync() ?? "0");

  // Kullanııcıdan ikinci sayıyı girmesini istiyoruz.
  print("İkinci sayiyi giriniz :");
  final double sayi2 = double.parse(stdin.readLineSync() ?? "0");

  final Calculate calculate = Calculate(sayi1, sayi2);

  // İşlem Seçim Bölümü
  print("Lütfen Listeden bir işlem seçiniz:");
  print("\t+ - Toplama");
  print("\t- - Çıkarma");
  print("\t* - Çarpma");
  print("\t/ - Bölme");
  print("\t% - Mod Alma");
  print("Seçiminiz : ");

// operatör değerine göre case işlemlerinden biri gerçekleştirilir.
  String operator = stdin.readLineSync()!;

  switch (operator) {
    case "+":
      print("Toplama sonucu : ${calculate.toplama()}");
      break;
    case "-":
      print("Çıkarma sonucu : ${calculate.cikarma()}");
      break;
    case "*":
      print("Çarpma sonucu : ${calculate.carpma()}");
      break;
    case "/":
      print("Bölme sonucu : ${calculate.bolme()}");
      break;
    case "%":
      print("Mod alma sonucu : ${calculate.modalma()}");
      break;
    default:
      print("Gecersiz islem");
  }
  print("----------------------------------------\n");
}
