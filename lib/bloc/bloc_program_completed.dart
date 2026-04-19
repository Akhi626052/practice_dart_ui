import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(){
  runApp(
      BlocProvider(
          create: (_) => CounterBloc(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen()
       ),
      )
  );
}
abstract class CounterEvent {}
class IncrementEvent extends CounterEvent {}
class DecrementEvent extends CounterEvent {}
class CounterState {
  final int counter;
  CounterState(this.counter);
}
class CounterBloc extends Bloc<CounterEvent, CounterState>{
  CounterBloc() : super(CounterState(0)) {
    on<IncrementEvent>((IncrementEvent event, Emitter emit){
      emit(CounterState(state.counter + 1));
    });
    on<DecrementEvent>((DecrementEvent event,Emitter emit){
      emit(CounterState(state.counter - 1));
    });
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.deepOrange),
        centerTitle: true,
        title: Text("Bloc Provider"),),
      body:
          BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state){
                   return Center(child: Text("${state.counter}", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),));
              }),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(onPressed: (){
            context.read<CounterBloc>().add(IncrementEvent());
          },child: Icon(Icons.add),),

          FloatingActionButton(onPressed: (){
            context.read<CounterBloc>().add(DecrementEvent());
          },child: Icon(Icons.remove),)

        ],
      ),
    );
  }
}