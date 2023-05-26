void main(){
 print('Inicio');
 
 httpGet('api.jweb/galaxy/all')
   .then( (data) {
    print(data.toUpperCase());
   });
  
 print('Fin');
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