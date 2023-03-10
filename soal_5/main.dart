import 'kue.dart';

void main() {
  List<Kue> daftarKue = [
    KuePesanan(1.5)
      ..nama = 'Kue Sus'
      ..harga = 10000.0,
    KuePesanan(2.0)
      ..nama = 'Kue Lapis'
      ..harga = 20000.0,
    KuePesanan(0.5)
      ..nama = 'Kue Donat'
      ..harga = 5000.0,
    KuePesanan(1.0)
      ..nama = 'Kue Brownies'
      ..harga = 15000.0,
    KuePesanan(1.0)
      ..nama = 'Kue Bolu'
      ..harga = 12000.0,
    KueJadi(10)
      ..nama = 'Kue Kering'
      ..harga = 10000.0,
    KueJadi(5)
      ..nama = 'Kue Basah'
      ..harga = 15000.0,
    KueJadi(20)
      ..nama = 'Kue Tart'
      ..harga = 25000.0,
    KueJadi(15)
      ..nama = 'Kue Putri Salju'
      ..harga = 20000.0,
    KueJadi(8)
      ..nama = 'Kue Coklat'
      ..harga = 18000.0,
    KuePesanan(0.25)
      ..nama = 'Kue Keju'
      ..harga = 8000.0,
    KuePesanan(0.75)
      ..nama = 'Kue Pandan'
      ..harga = 6000.0,
    KuePesanan(0.3)
      ..nama = 'Kue Kacang'
      ..harga = 9000.0,
    KuePesanan(0.5)
      ..nama = 'Kue Pisang'
      ..harga = 7000.0,
    KuePesanan(0.75)
      ..nama = 'Kue Nastar'
      ..harga = 12000.0,
    KueJadi(12)
      ..nama = 'Kue Susu'
      ..harga = 22000.0,
    KueJadi(7)
      ..nama = 'Kue Lemper'
      ..harga = 13000.0,
    KueJadi(18)
      ..nama = 'Kue Onde-onde'
      ..harga = 18000.0,
    KueJadi(13)
      ..nama = 'Kue Klepon'
      ..harga = 15000.0,
    KueJadi(10)
      ..nama = 'Kue Leker'
      ..harga = 8000.0,
  ];

  // menampilkan semu kue dan jenisnya
  print('semua kue : ');
  for (var kue in daftarKue) {
    print('${kue.toString()} - ${kue.runtimeType}');
  }

  print('---------------');
  
  // hitung total harga diri semua jenis kue
  double totalHarga = 0;
  for (var kue in daftarKue) {
    totalHarga += kue.hitungHarga();
  }
  print('Total harga dari semua jenis kue: ${totalHarga.toString()}');

  print('---------------');
  print('--- Total harga dan total berat dari KuePesanan ---');

  // total harga dan total berat dari KuePesanan
  double totalHargaKuePesanan = 0;
  double totalBeratKuePesanan = 0;
  for (var kue in daftarKue) {
    if (kue is KuePesanan) {
      totalHargaKuePesanan += kue.hitungHarga();
      totalBeratKuePesanan += kue.berat;
    }
  }
  print('Total harga dari KuePesanan : ${totalHargaKuePesanan.toString()}');

  print('Total berat dari KuePesanan: ${totalBeratKuePesanan.toString()} kg');
  
  
  print('---------------');
  print('--- Total harga dan total jumlah dari KueJadi ---');
  // total harga dan total jumlah dari KueJadi
  double totalHargaKueJadi = 0;
  double totalJumlahKueJadi = 0;
  for (var kue in daftarKue) {
    if (kue is KueJadi) {
      totalHargaKueJadi += kue.hitungHarga();
      totalJumlahKueJadi += kue.jumlah;
    }
  }
  print('Total harga KueJadi ${totalHargaKueJadi.toString()}');
  print('Total jumlah KueJadi ${totalJumlahKueJadi.toString()}');

  print('---------------');
  print('--- Menampilakan informasi kue dengan harga terbesar ---');
  // Menampilakan informasi kue dengan harga terbesar

  Kue hargaTerbesar = daftarKue[0];
  for (var kue in daftarKue) {
    if (kue.hitungHarga() > hargaTerbesar.hitungHarga()) {
      hargaTerbesar = kue;
    }
  }

  print('Kue dengan harga terbesar ${hargaTerbesar.toString()}');

}
