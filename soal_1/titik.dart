import 'dart:math';

class Titik{
  double X = 0, Y = 0;

  setXY(double x, double y){
    X = x;
    Y = y;
  }

  getXY(){
    print(X);
    print(Y);
  }

  pindahKoordinat(double x, double y){
    double newX = x * cos(y);
    double newY = x * sin(y);

    X += newX;
    Y += newY;
  }

   hitungJarak(double x1, double  y1, double x2, double y2){
    double jarak = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));
    print('Jarak antara titik (${x1}, ${y1}) dan (${x2}, ${x2}) adalah ${jarak}'); 
     }


} 