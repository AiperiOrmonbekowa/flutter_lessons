import 'package:counter_bloc/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter bloc'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(context.watch<CounterCubit>().state.toString()),
        // Text(context.watch<CounterCubit>().state.toString()), => Counter_cubit.dart файлндагы <CounterCubit> алып келип берет
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterCubit>().increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
