import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //propiedades
  int counter = 10;

  void increase(){
    counter++;
    setState(() {});
  }
  void reset(){
    counter=0;
    setState(() {});
  }
  void decrease(){
    counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //variables
    const fontSize30 = TextStyle(fontSize: 30);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("CounterScreen"),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text("Número de clicks: ",style: fontSize30,),
            Text('$counter',style: fontSize30,)
          ],
        ),
      ), 
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions(increaseFn: increase,resetFn: reset,decreaseFn: decrease)
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn;
  final Function resetFn;
  final Function decreaseFn;
  
  const CustomFloatingActions({
    super.key, 
    required this.increaseFn, 
    required this.resetFn, 
    required this.decreaseFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
         FloatingActionButton(
           onPressed: () => increaseFn(), //() => setState(() => counter++)
           child: const Icon(Icons.exposure_plus_1_outlined)
         ),
         //este SizedBox es util cuando se necesita precision al momento de agregar espacio a nuestros widgets
         //const SizedBox(width: 20),
         FloatingActionButton(
          onPressed: () => resetFn(), //() => setState(() => counter=0)
          child: const Icon(Icons.exposure_sharp),
         ),
         //const SizedBox(width: 20),
         FloatingActionButton(
          onPressed: () => decreaseFn(),// () => setState(() => counter--)
          child: const Icon(Icons.exposure_minus_1_outlined)
         ),
      ],
    );
  }
}