//version 3.10 de Dart
abstract class Animal{
  
}

abstract class Mamifero extends Animal{
  
}

abstract class Ave extends Animal{
  
}

abstract class Pez extends Animal{
  
}


abstract mixin class Volador{
  void volar() => print('estoy volando');
}
abstract mixin class Caminante{
  void caminar() => print('estoy caminando');
}
abstract mixin class Nadador{
  void nadar() => print('estoy nadando');
}

class Delfin extends Mamifero with Nadador{
  
}

class Murcielago extends Mamifero with Caminante, Volador{
  
}

class Gato extends Mamifero with Caminante{
  
}

class Paloma extends Ave with Caminante, Volador{
  
}

class Pato extends Ave with Caminante, Volador, Nadador{
  
}

class Tiburon extends Pez with Nadador{
  
}

class PezVolador extends Pez with Nadador,Volador{
  
}

void main(){
  //final flipper = new Delfin();
  //flipper.nadar();
  
  //final bat = new Murcielago();
  //bat.caminar();
  //bat.volar();
  
  //final sanbasilio = new Paloma();
  //sanbasilio.volar();
  //sanbasilio.caminar();
  
  final patoSilvestreAmericano = new Pato();
  patoSilvestreAmericano.volar();
  patoSilvestreAmericano.caminar();
  patoSilvestreAmericano.nadar();
  
  final tiburonBlanco = new Tiburon();
  tiburonBlanco.nadar();
  
  final pezVolador = new PezVolador();
  pezVolador.volar();
  pezVolador.nadar();
}
