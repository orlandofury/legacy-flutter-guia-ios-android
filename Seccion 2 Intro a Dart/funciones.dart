void main() {
  final String nombre = 'Steve';
  //saludar(nombre,'Wassap');
  //sayHi(nombre:nombre);
  sayHi2(nombre: nombre, mensaje: 'Ohaio');
}

//No permitido
/*
void saludar(String p1 = 'test '){
  print('Ohai IO $p1');
}
*/

//argumento con valor por default
void saludar(String nombre, [String mensaje = 'Hi']) {
  print('$mensaje $nombre');
}

void sayHi({String nombre = 'No name', String? mensaje}) {
  print('$mensaje $nombre');
}

void sayHi2({
  required String nombre, 
  required String mensaje
  }) {
  print('$mensaje $nombre');
}
