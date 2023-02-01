import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:implementation_dependency_injection/view/riddle_event.dart';
import 'package:implementation_dependency_injection/view/riddle_state.dart';

import '../bloc/riddle_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RiddleBloc>(
      create: (context) => RiddleBloc()..add(GetRiddleEvent()),
      child: const HomeView(),
    );
    // return const HomeView();
  }
}

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String? riddle;

  @override
  Widget build(BuildContext context) {
    return BlocListener<RiddleBloc, RiddleState>(
      listener: (context, state) {
        // TODO: here you change code banners
      },
      child: BlocBuilder<RiddleBloc, RiddleState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            body: Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Column(
                  children: [
                    const Text('push for a riddle'),
                    TextButton(
                      child: const Text("Ask"),
                      onPressed: () {
                        context.read<RiddleBloc>().add(GetRandomRiddleById());
                      },
                    ),
                    state is RiddleReceivedState ? getRiddleWidget(state.showRiddle) :const Text("- -"),
                    //Text(riddle != null ? riddle! : ""),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
  getRiddleWidget(String riddle) => Text("-$riddle-");

}
