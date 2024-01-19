import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/map_detail_cubit.dart';
import '../blocs/map_detail_state.dart';

class MapDetailScreen extends StatelessWidget {
  const MapDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapDetailCubit, MapDetailState>(
      builder: (context, state) {
        final bloc = context.read<MapDetailCubit>();
        return Scaffold(
          appBar: AppBar(
            leading: BackButton(),
            title: Text('${state.description} screen'),
          ),
        );
      },
    );
  }
}
