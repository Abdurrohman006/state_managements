import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_view_model.dart';

class ProviderCounter extends StatelessWidget {
  const ProviderCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Provider counter"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("FloatingActionButton ni shuncha marta bosding:"),
              Text(
                "${context.watch<CounterViewModel>().count}",
                style: const TextStyle(fontSize: 40),
              ),
              IconButton(
                onPressed: () {
                  context.read<CounterViewModel>().decrement();
                },
                icon: const Icon(Icons.remove),
              )
            ],
          ),
        ),
        // floatingActionButton: FloatingActionButton(onPressed: () {}),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.read<CounterViewModel>().increment(),
          tooltip: "increment",
          child: const Icon(Icons.add),
        ));
  }
}
