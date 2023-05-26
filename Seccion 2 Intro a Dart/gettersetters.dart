//importamos math con alias math para ver mas informacion de la libreria
import 'dart:math' as math;

void main(){
  
  final cuadrado = new Cuadrado(2);
  
  cuadrado.area = 100;
  
  print('area: ${cuadrado.calculaArea()}');
  
  print('lado: ${cuadrado.lado}');
  
  print('area get: ${cuadrado.area}');
  
  
  
}

class Cuadrado{
  double lado;
  
  //los getter no llevan parentisis
  double get area {
    return this.lado*this.lado;
  }
  
  set area(double valor){
    this.lado = math.sqrt(valor);
    //
    //print('set: $valor');
  }
  
  Cuadrado(double lado):
    this.lado = lado;
  
  double calculaArea(){
    return this.lado * this.lado;
  }
}