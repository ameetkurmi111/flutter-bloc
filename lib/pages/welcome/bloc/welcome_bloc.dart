import 'package:flutter_application_bloc/pages/welcome/bloc/welcome_event.dart';
import 'package:flutter_application_bloc/pages/welcome/bloc/welcome_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomeBloc extends Bloc<WelcomeEvent,WelcomeState> {
  WelcomeBloc():super(WelcomeState()){
    on<WelcomeEvent> ((event, emit) {
      emit(WelcomeState(page: state.page));
    });
  }
}