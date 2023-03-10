abstract class Kue{
  String? nama;
  double? harga;

  double hitungHarga();

  @override
  String toString() {
    return 'nama : $nama, harga $harga';
  }
}

class KuePesanan extends Kue {
  double berat;
  KuePesanan(this.berat);
  @override
  double hitungHarga(){
    return harga! * berat; 
  }
}

class KueJadi extends Kue{
  double jumlah;
  
  KueJadi(this.jumlah);

  @override
  double hitungHarga() {
   return harga! * jumlah * 2;
  }
}