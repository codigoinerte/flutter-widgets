import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {

  static const String name = 'counter_screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {


    final int clickCounter = ref.watch(counterProvider);

    final bool isDarkMode = ref.watch(isDarkmodeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter screen"),
        actions: [
          IconButton(onPressed: (){

            ref.read(isDarkmodeProvider.notifier).update((state) => !state);

          }, icon: Icon( isDarkMode ? Icons.wb_sunny_outlined : Icons.dark_mode_outlined))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("valor: $clickCounter", style: Theme.of(context).textTheme.titleLarge)
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        
        onPressed: (){
          //method1: ref.read(counterProvider.notifier).state++;
          ref.read(counterProvider.notifier).update((state) => state+1);
        },
        child: const Icon(Icons.add),
      ),

    );
  }
}

