import 'package:flutter/material.dart';
import 'package:flutter_eg990_mobile/features/exports_for_route_widget.dart';

import 'presentation/web_display.dart';

class WebRoute extends StatefulWidget {
  final String startUrl;
  final bool showUrl;
  final bool hideHtmlBars;

  const WebRoute(
      {@required this.startUrl,
      this.showUrl = false,
      this.hideHtmlBars = false});

  @override
  _WebRouteState createState() => _WebRouteState();
}

class _WebRouteState extends State<WebRoute> {
//  JwtInterface _jwtInterface;

  @override
  void initState() {
//    _jwtInterface = sl.get<JwtInterface>();
    super.initState();
    debugPrint('opening url: ${widget.startUrl}');
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        debugPrint('pop web route');
        if (AppNavigator.isWebRoute) {
          Future.delayed(
            Duration(milliseconds: 200),
            () => AppNavigator.back(),
          );
        }
        return Future(() => true);
      },
      child: Scaffold(
        body: WebDisplay(
          url: widget.startUrl,
          showUrl: widget.showUrl,
          hideHtmlBars: widget.hideHtmlBars,
        ),
      ),
    );
  }
}