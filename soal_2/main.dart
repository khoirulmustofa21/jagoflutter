import 'calculator.dart';

void main(List<String> args) {
  var c = Calculator();
  c.operan1 = 10;
  c.operan2 = 4;

  print('Tambah : ${c.tambah()}');
  print('Kurang : ${c.kurang()}');
  print('Kali : ${c.kali()}');
  print('Bagi : ${c.bagi()}');
  print('Pangkat : ${c.pangkat()}');
}