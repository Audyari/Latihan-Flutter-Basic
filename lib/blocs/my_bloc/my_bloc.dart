import 'package:flutter_bloc/flutter_bloc.dart';
import 'my_event.dart';
import 'my_state.dart';

class MyBloc extends Bloc<MyEvent, MyState> {
  MyBloc() : super(InitialState()) {
    on<LoadInitialData>((event, emit) async {
      emit(LoadingState()); // Optional: Emit a loading state
      // Simulate data loading
      await Future.delayed(const Duration(seconds: 2));
      emit(ReloadedState());
    });
  }
}

class LoadingState extends MyState {}
