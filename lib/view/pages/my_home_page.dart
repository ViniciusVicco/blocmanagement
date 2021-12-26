import 'package:blocmanagement/bloc/counter/bloc_counter.dart';
import 'package:blocmanagement/view/pages/pokemon_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: BlocBuilder<CounterBloc, int>(builder: (context, count) {
        if (context.read<CounterBloc>().state >= 10) {
          return Scaffold(
            appBar: AppBar(
              title: Text(widget.title),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Chega favor',
                  ),
                  Text(count.toString()),
                ],
              ),
            ),
            floatingActionButton: Column(
              children: [
                FloatingActionButton(
                  onPressed: () => context.read<CounterBloc>().increment(),
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: () => context.read()<CounterBloc>().decrement(),
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          );
        }
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(count.toString()),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(PokemonNamePage.routeName);
                    },
                    child: Text("Pokemon"))
              ],
            ),
          ),
          floatingActionButton: Column(
            children: [
              FloatingActionButton(
                heroTag: "Teste",
                onPressed: () => context.read<CounterBloc>().increment(),
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                heroTag: "Teste2",
                onPressed: () => context.read<CounterBloc>().decrement(),
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ],
          ),
        );
      }),
    );
  }
}
