void main(){
  
  //no se puede inicial una clase abstracta
  //final perro = new Animal();
  
  final perro = new Perro();
  final gato = new Gato();
  //perro.emitirSonido();
  
  sonidoAnimal(perro);
  sonidoAnimal(gato);
}

void sonidoAnimal(Animal animal){
  animal.emitirSonido();
}

abstract class Animal{
  int? patas;
    
  void emitirSonido();
}

class Perro implements Animal{
  int? patas;
  
  void emitirSonido() => print('Woff! Woff!');
  
}

class Gato implements Animal{
  int? patas;
  int? bigotes;
  
  void emitirSonido() => print('Miauuu!');
}