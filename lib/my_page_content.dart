import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/my_bloc/my_bloc.dart';
import 'blocs/my_bloc/my_event.dart';
import 'blocs/my_bloc/my_state.dart';

class MyPageContent extends StatelessWidget {
  const MyPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BLoC Example')),
      body: Center(
        child: BlocBuilder<MyBloc, MyState>(
          builder: (context, state) {
            if (state is InitialState) {
              return const Text('Initial State');
            } else if (state is ReloadedState) {
              return const Text('Data Reloaded');
            } else if (state is LoadingState) {
              return const CircularProgressIndicator();
            }
            return Container(); // Default case
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<MyBloc>().add(LoadInitialData());
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
