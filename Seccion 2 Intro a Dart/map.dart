void main() {
  //tipos dinamicos
  /*Map persona = {
    'nombre': 'Testa',
    'edad': 300,
    'soltero': true,
    true: false,
    1: 100,
    2: 500
  };
  */
  //definiendo tipo para llave y valor
  Map<String,dynamic> persona = {
    'nombre': 'Testa',
    'edad': 300,
    'soltero': true
  };
  
  persona.addAll({'segundoNombre':'Juan'});
  print(persona);
  print(persona['soltero']);
  print(persona[true]);
  print(persona[2]);
}
