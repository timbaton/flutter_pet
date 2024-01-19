import 'package:flutter_bloc/flutter_bloc.dart';

import 'map_detail_state.dart';

class MapDetailCubit extends Cubit<MapDetailState> {
  MapDetailCubit({
    required String description,
  }) : super(MapDetailState.initial()) {
    emit(state.copyWith(description: description));
  }
}
