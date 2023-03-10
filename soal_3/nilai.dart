class Nilai{
  double? Quis,UTS,UAS;

  setQuis( double x) => Quis = x;
  setUTS(double x) => UTS = x;
  setUAS(double x) => UAS = x;

  double getNA() => 0.2 * Quis! + 0.3 * UTS! + 0.5 * UAS!;


  String getIndex(){
    if (getNA() >= 80 ) {
      return 'A';
    }else if (getNA() >= 68){
      return 'B';
    }else if (getNA() >= 56 ){
      return 'C';
    }else if (getNA() >= 45) {
      return 'D';
    }else{
    return 'E';
    }
  }

  String getKeterangan(){
   switch (getIndex()) {
     case 'A':
       return 'Sangat Baik';
       case 'B':
       return 'Baik';
       case 'C':
       return 'Cukup';
       case 'D':
       return 'Kurang';
     default:
     return 'Sangat Kurang';
   }
  }
}

