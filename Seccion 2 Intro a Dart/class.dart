void main() {
  //la palabra new es opcional
  final wolverine = new Heroe(nombre:'Logan',poder:'Regeneracion');
  
  //wolverine.nombre = 'Logan';
  //wolverine.poder = 'Regeneracion';
  
  print(wolverine);
}

class Heroe{
  String nombre;
  String poder;
  
  Heroe({
    required this.nombre,
    required this.poder
    });
  
  /*Heroe(String pNombre,String pPoder){
    this.nombre = pNombre;
    this.poder = pPoder;
  }*/
  
  @override
  String toString(){
    //esto necesita las llaves
    //return 'nombre: $this.nombre';
    
    return 'nombre: ${this.nombre}, poder: ${this.poder}';
    
  }
}