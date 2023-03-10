import 'dart:math';

class Calculator{
  double operan1=0, operan2=0;

  isiOperan1(double x){
    operan1 = x;
  }

  isiOperan2(double x){
    operan2 = x;
  }

  double tambah(){
    return operan1 + operan2;
  }

  double kurang(){
    return operan1 - operan2;
  }
  double kali(){
    return operan1 * operan2;
  }
  double bagi(){
    return operan1 / operan2;
  }
  pangkat(){
    return pow(operan1, operan2);
  }
}