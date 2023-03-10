import 'nilai.dart';

void main(List<String> args) {
  var n = Nilai();
  n.setQuis(90);
  n.setUTS(90);
  n.setUAS(70);


  print(n.getNA());

  print('----------');

  print('Index ${n.getIndex()}');

  print('----------');

  print(n.getKeterangan());
}