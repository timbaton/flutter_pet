import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map/features/list/blocs/list_cubit.dart';
import 'package:map/features/list/blocs/list_state.dart';
import 'package:world_countries/world_countries.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListCubit, ListState>(builder: (context, state) {
      final bloc = context.read<ListCubit>();
      return SafeArea(
        child: CountryPicker(
          chosen: state.selected,
          onSelect: (country) {
            bloc.onSelected(country);
          },
        ),
      );
    });
  }
}
