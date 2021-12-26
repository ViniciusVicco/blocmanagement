import 'package:blocmanagement/bloc/pokemon/cubit/pokecubit_cubit.dart';
import 'package:blocmanagement/models/pokemon_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PokemonNamePage extends StatefulWidget {
  static const String routeName = "/PokemonNamePage";
  const PokemonNamePage({Key? key}) : super(key: key);

  @override
  _PokemonNamePageState createState() => _PokemonNamePageState();
}

class _PokemonNamePageState extends State<PokemonNamePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PokecubitCubit(),
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Pokemon"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: BlocBuilder<PokecubitCubit, PokecubitState>(
                  builder: (context, state) {
                    return Text(state.pokemon.name.isEmpty
                        ? ""
                        : state.pokemon.name[0].toUpperCase() +
                            state.pokemon.name.substring(1));
                  },
                ),
              ),
            ],
          ),
          floatingActionButton: BlocBuilder<PokecubitCubit, PokecubitState>(
            builder: (context, state) {
              return FloatingActionButton(
                heroTag: "buttonP",
                child: Text("P"),
                onPressed: () async {
                  await BlocProvider.of<PokecubitCubit>(context).obterPokemon();
                },
              );
            },
          )),
    );
  }
}
