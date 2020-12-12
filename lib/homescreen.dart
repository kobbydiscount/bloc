import 'package:flutter/material.dart';
import 'package:learning_bloc/models/counter_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF03C4E5),
        title: Text("Counter App"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 30),
        child: Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      print("Increase");
                      Provider.of<CounterModel>(context, listen: false)
                          .increment();
                    },
                    child: Icon(Icons.add_circle,
                        color: Color(0XFF03C4E5), size: 30),
                  ),
                ),
                Consumer<CounterModel>(
                  builder: (context, counterInstance, child) {
                    return Text(
                      counterInstance.count.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      print("Decrease");
                      Provider.of<CounterModel>(context, listen: false)
                          .decrement();
                    },
                    child: Icon(
                      Icons.remove_circle,
                      color: Color(0XFF03C4E5),
                      size: 30,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Provider.of<CounterModel>(context, listen: false).reset();
                  },
                  child: Container(
                    child: Icon(Icons.refresh, size: 30, color: Colors.yellow),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
