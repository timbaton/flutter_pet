import 'package:countries_world_map/countries_world_map.dart';
import 'package:countries_world_map/data/maps/world_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map/map/blocs/map_cubit.dart';
import 'package:map/map/blocs/map_state.dart';
import 'package:sealed_countries/sealed_countries.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapCubit, MapState>(
      builder: (context, state) {
        final bloc = context.read<MapCubit>();

        var result = { for (var v in state.selected ?? List.empty()) (v as WorldCountry).codeShort : Colors.green };
        // var a = SMapWorldColors()
        var sMapWorldColors = SMapWorldColors(
            uS: Colors.green, // This makes USA green
            cN: Colors.green, // This makes China green
            rU: Colors.green, // This makes Russia green
          );
        return SimpleMap(
          // String of instructions to draw the map.
          instructions: SMapWorld.instructions,

          // Default color for all countries.
          defaultColor: Colors.grey,

          // Matching class to specify custom colors for each area.
          colors: sMapWorldColors.toMap(),

          // Details of what area is being touched, giving you the ID, name and tapdetails
          callback: (id, name, tapdetails) {
            print(id);
          },
        );
      },
    );
  }
}
