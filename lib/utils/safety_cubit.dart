import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AppCubit<State> extends BlocBase<State> {
  AppCubit(State state) : super(state);

  @override
  void emit(State state) {
    if (isClosed) {
      return;
    } else {
      super.emit(state);
    }
  }
}
