import 'titik.dart';

void main(List<String> args) {

  printData(String pesan, dynamic data){
    print('${pesan} : ${data}');
  }
    
    var t = Titik();
    t.X = 10;
    t.Y = 20;
    t.getXY();

    print('-------------');

    t.setXY(20, 30);
    t.getXY();

    print('-------------');

    t.pindahKoordinat(20, 10);
    t.getXY();
    
    print('-------------');

  printData('titik x', t.X);

  print('------------');
  t.hitungJarak(20, 30, 70, 90);
}