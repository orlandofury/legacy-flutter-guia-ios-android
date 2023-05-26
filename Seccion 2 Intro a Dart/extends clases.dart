void main(){
  //no se puede crear instancia de una clase abstracta.
  final superman = new Heroe('Supes');
  final brainac = new Villano('Brainac 5');
  print(superman);
  print(brainac);
}

abstract class Personaje{
  String? poder;
  String? nombre;
  
  Personaje(this.nombre);
  
  @override
  String toString(){
    return '$nombre - $poder';
  }
}

class Heroe extends Personaje{
  int valentia = 100;
  Heroe(String nombre): super(nombre);
}

class Villano extends Personaje{
  int maldad = 50;
  
  Villano(String nombre): super(nombre);
}