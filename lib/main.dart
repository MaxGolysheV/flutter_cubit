import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/click_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => ClickCubit(),
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<ClickCubit, ClickState>(
              builder: (context, state) {



                if(state is ClickError)
                {
                  return Text(
                  state.message,
                  style: Theme.of(context).textTheme.headline4,
                 );
                  
                  
                }
                if(state is Click)
                {
                  return Text(
                  state.count.toString(),
                  style: Theme.of(context).textTheme.headline4,
                 );
                }
                return Container();
                
              },
            ),
            
            //Image.asset(''),
            ElevatedButton(
              onPressed:() 
              {
                context.read<ClickCubit>().onClick(); 
              },
              child: Text('+')
              ),
              ElevatedButton(
              onPressed:() 
              {
                context.read<ClickCubit>().onClickMinus();    
              },
              child: Text('-')
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () 
        {
          //context.read<ClickCubit>().onClick();
          
        },
        tooltip: 'Theme',
        child: const Icon(Icons.add),
      ),
    );
  }
}
