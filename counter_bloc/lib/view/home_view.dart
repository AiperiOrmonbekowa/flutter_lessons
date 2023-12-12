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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.watch<CounterCubit>().state.toString(),
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            // Text(context.watch<CounterCubit>().state.toString()), => Counter_cubit.dart файлндагы <CounterCubit> алып келип берет
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterCubit>().increment();
                  },
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterCubit>().decrement();
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
