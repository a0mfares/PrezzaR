import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class BlocPrezzaOberser extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('${bloc.runtimeType} = ${change.currentState} => ${change.nextState}',
        name: 'bloc changes');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
    super.onEvent(bloc, event);
    log('${bloc.runtimeType} = $event', name: 'bloc events');
  }
}
