/*
 * Abstract soyut sınıf: Sınıflar arasında soyutlama yapmak için kullanılır.
 * Abstract sınıflardan nesne üretilemez , abstract sınıflarda normal ve abstract methodlar olur.
 * Abstract methodlar alt sınıflarca override edilmek zorundadır.
*/
abstract class Calculator {
  // Değişkenleri tanımlıyoruz.
  final double sayi1;
  final double sayi2;

  Calculator(this.sayi1, this.sayi2);

  double toplama();
  double cikarma();
  double carpma();
  double bolme();
  double modalma();
}

//Dart da kalıtım bir sınıfın kendine ait özellikleri başka bir sınıfa aynen aktarması ya da bazı özellikleri diğer sınıflara izin vermesidir.
//Bir sınıfı extend ettiğimizde alt sınıf nesnesi olusturulmadan önce üst sınıfın kurucusu çalısır.
//Extends anahtar kelimesi: bir sınıfa ait özelliklere başka bir sınava miras almak için kullanılır.
class Calculate extends Calculator {
  Calculate(double sayi1, double sayi2)

      //super anahtar kelimesi ile üst sınıfın alanlarına erişip düzenleme yapabiliriz.
      : super(sayi1, sayi2);

  @override
  double bolme() {
    return sayi1 / sayi2;
  }

  @override
  double carpma() {
    return sayi1 * sayi2;
  }

//Method overriding : üst sınıftaki değişken veya methodların alt sınıf tarafından değiştirilmesidir.
  @override
  double cikarma() {
    return sayi1 - sayi2;
  }

  @override
  double toplama() {
    return sayi1 + sayi2;
  }

  @override
  double modalma() {
    return sayi1 % sayi2;
  }
}
