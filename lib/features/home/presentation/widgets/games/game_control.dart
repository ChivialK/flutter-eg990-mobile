import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ty_mobile/features/home/presentation/bloc/bloc_game_tabs.dart';

///
/// @author H.C.CHIANG
/// @version 2020/01/14
class GameControl extends StatefulWidget {
  GameControl({Key key}) : super(key: key);

  @override
  _GameControlState createState() => _GameControlState();
}

class _GameControlState extends State<GameControl> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeGameTabsBloc>(context).add(GetGameTypesEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
