import 'dart:math';

abstract class Luas {
  double getLuas();
  double getKeliling();
}

class PersegiPanjang extends Luas {
  double panjang, lebar;

  PersegiPanjang(this.panjang, this.lebar);
  @override
  getLuas() {
    return panjang * lebar;
  }

  @override
  getKeliling() {
    return 2 * (panjang + lebar);
  }
}

class BujurSangkar extends Luas {
  double sisi;

  BujurSangkar(this.sisi);

  @override
  double getLuas() {
    return sisi * sisi;
  }

  @override
  double getKeliling() {
    return 4 * sisi;
  }
}

class Lingkaran extends Luas {
  double radius;

  Lingkaran(this.radius);

  @override
  double getLuas() {
    return pi * radius * radius;
  }

  @override
  double getKeliling() {
    return 2*pi*radius;
  }
}
