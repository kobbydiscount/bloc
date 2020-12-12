import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_bloc/cubit/counter_cubit.dart';
import 'homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LEARNING BLOC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider(
          create: (context) => CounterCubit(),
          child: HomeScreen()),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 'You have pushed the button this many times:',
//               ),
//               BlocConsumer<CounterCubit, CounterState>(
//                 listener: (context, state){
//                   if(state.wasIncremented == true){
//                     Scaffold.of(context).showSnackBar(SnackBar
//                       (
//                       content: Text("Increment Happened"),
//                       duration: Duration(milliseconds: 300),
//                     ));
//                   }
//                   else if (state.wasIncremented == false){
//                     Scaffold.of(context).showSnackBar(SnackBar(
//                       content: Text("Decrement Happened"),
//                       duration: Duration(milliseconds: 300),
//                     ));
//                   }
//                 },
//                 builder: (BuildContext context, state) {
//                   return Text(
//                     state.counterValue.toString(),
//                     style: Theme.of(context).textTheme.headline4,
//                   );
//                 },
//               ),
//               SizedBox(height: 20,),
//               Row (
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   FloatingActionButton(
//                     onPressed: () {
//                       BlocProvider.of<CounterCubit>(context).increment();
//                     },
//                     tooltip: 'Increment',
//                     child: Icon(Icons.add),
//                   ),
//                   FloatingActionButton(
//                     onPressed: () {
//                       BlocProvider.of<CounterCubit>(context).decrement();
//                     },
//                     tooltip: 'decrement',
//                     child: Icon(Icons.remove),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       );
//   }
// }
