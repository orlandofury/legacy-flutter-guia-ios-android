void main() async{
  print('Inicio');
   
  final data = await httpGet('api.jweb/universe/all');
   
  
  print(data);
  
  //equivalente a esto
  //print(await httpGet('api.jweb/universe/500'));
  
  
   /*
   httpGet('api.jweb/galaxy/all')
     .then( (data) {
      print(data.toUpperCase());
     });
    */
   //print(getNombre('001'));
   //then(print) es equivalente a .then((data)=>print(data));
   //getNombre('002').then(print);

   //final nombre = await getNombre('003');
   //print(nombre);


   print('Fin');
}

Future<String> getNombre(String id) async{
  return '$id - Orlando';
}


//sin el string el tipo que retorna es dynamic
Future<String> httpGet(String url){
  //Duration es una clase a la que se puede agregar new
  //pero es opcional.
  //return Future.delayed(Duration(seconds:3),() {
  //  return 'Hola Mundo - 3 segundos';
  //});
  return Future.delayed(Duration(seconds:3),()=>'Hola mundo shortcut oneline arrow');
}