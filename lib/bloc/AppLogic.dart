import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';

enum LikeEvent { click }

class LikeBloc extends Bloc<LikeEvent, bool> {
  @override
  bool get initialState => false;

  @override
  Stream<bool> mapEventToState(LikeEvent event) async* {
    BehaviorSubject s = state as BehaviorSubject;
    switch (event) {
      case LikeEvent.click:
        yield s.value == false;
        break;
    }
  }
}

