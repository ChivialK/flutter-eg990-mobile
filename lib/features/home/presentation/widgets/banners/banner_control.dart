import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ty_mobile/features/home/presentation/bloc/bloc_banner.dart';

///
/// @author H.C.CHIANG
/// @version 2019/12/27
class BannerControl extends StatefulWidget {
  BannerControl({Key key}) : super(key: key);

  @override
  _BannerControlState createState() => _BannerControlState();
}

class _BannerControlState extends State<BannerControl> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeBannerBloc>(context).add(GetBannerEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
