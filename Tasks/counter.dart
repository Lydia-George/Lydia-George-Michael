import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter_cubit/counter_logic.dart';
import '../counter_cubit/counter_state.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterLogic(),  // logic Class
    child: BlocConsumer<CounterLogic,CounterState> (

      listener: (context, state){
        print("Message : $state");
      },

      builder: (context , state){
        // Object from Logic
        CounterLogic obj = BlocProvider.of(context);
        return
          Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: Center(
              child: Text(
                'Counter',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${obj.varCounter}'),

                SizedBox(height: 70,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        obj.plusCounter();
                      },
                      color: Colors.blueGrey,
                      child: Text('+'),
                    ),

                    MaterialButton(
                      onPressed: () {
                        obj.minusCounter();

                      },
                      color: Colors.blueGrey,
                      child: Text('-'),
                    ),
                  ],
                ),
                SizedBox(height: 30,),

                MaterialButton(
                  onPressed: () {
                    obj.resetCounter();
                  },
                  color: Colors.yellow,
                  height: 70,
                  child: Text('R'),
                ),
              ],
            ),
          ),

        );
      },),

    );
  }
}
