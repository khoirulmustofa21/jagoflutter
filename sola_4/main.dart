import 'luas.dart';

void main(List<String> args) {

  final ppj = PersegiPanjang(10, 10);
  print('Luas : ${ppj.getLuas()}');
  print('Keliling : ${ppj.getKeliling()}');

  print('----------');

  final bjs = BujurSangkar(20);
  print('Luas : ${bjs.getLuas()}');
  print('Keliling : ${bjs.getKeliling()}');

  print('----------');

  final ling = Lingkaran(30);
  print('Luas ${ling.getLuas()}');
  print('Keliling ${ling.getKeliling()}');
}