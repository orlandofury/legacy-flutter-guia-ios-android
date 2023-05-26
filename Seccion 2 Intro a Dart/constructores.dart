void main() {
  final rawJson = {
    'nombre': 'Burce Wayne',
    'poder':'Dinero, grand master de artes marciales'
  };
  
  //el signo de admiracion le indica al compiler que se salte el error
  //final batman = new Heroe(nombre:rawJson['nombre']!,poder:rawJson['poder']!);
  
  final batman = Heroe.fromJson(rawJson);
  
  print(batman);
  //final wolverine = new Heroe(nombre:'Logan',poder:'Regeneracion');

  //print(wolverine);
}

class Heroe{
  String nombre;
  String poder;
  
  Heroe({
    required this.nombre,
    required this.poder
    });
  
  //lo que se pone luego de los 2 puntos
  //se ejecuta al momento de crear la instancia de la clase
  Heroe.fromJson(Map<String,String> json):
  this.nombre = json['nombre']!,
  this.poder = json['poder'] ?? 'No tiene poder';
  /*
  Heroe.fromJson(Map<String,String> json){
    //una posiblidad puede ser pero solo si los campos
    //nombre y poder son nullables "String?"
    this.nombre = json['nombre']!;
    this.poder = json['poder'] ?? 'No tiene poder';
    
  }*/
  
  @override
  String toString(){
    //esto necesita las llaves
    //return 'nombre: $this.nombre';
    
    return 'nombre: ${this.nombre}, poder: ${this.poder}';
    
  }
}