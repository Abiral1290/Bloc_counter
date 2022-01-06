// ignore_for_file: no_logic_in_create_state

import 'package:bloc_patterns/Counter_model.dart';
import 'package:bloc_patterns/cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  BlocProvider<Cubit_coun>(
      create : (context) => Cubit_coun(),
      child: MaterialApp(
        title: "demo",
        home: Bloc_buil(title: 'asd',),
      ),
    );
  }
}
class Bloc_buil extends StatefulWidget{

String title;

  Bloc_buil({Key? key, required this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Home_bloc();
  }
}

// ignore: camel_case_types
class Home_bloc extends State<Bloc_buil>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Text("Push the boutte"),
          BlocBuilder<Cubit_coun, Counter_model>(
            builder: (context, state){
              return Text(state.Counter.toString());
            },
          ),
          SizedBox(
            width: 30,
          ),
          Row(
            children: [
              FloatingActionButton(
                  child: Icon(Icons.add),
                  tooltip: "Increament",
                  onPressed: (){
                    BlocProvider.of<Cubit_coun>(context).increament();
    }),
              FloatingActionButton(
                  child: Icon(Icons.add),
                  tooltip: "Increament",
                  onPressed: (){
                    BlocProvider.of<Cubit_coun>(context).decreament();
    })
            ],
          )],
      ),
    );
  }

}

