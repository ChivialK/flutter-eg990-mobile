import 'package:flutter/material.dart';
import 'package:flutter_eg990_mobile/features/exports_for_route_widget.dart';

import 'state/register_store.dart';
import 'widget/register_display.dart';
import 'widget/register_store_inherited_widget.dart';

class RegisterRoute extends StatefulWidget {
  final bool isDialog;

  RegisterRoute({this.isDialog = false});

  @override
  _RegisterRouteState createState() => _RegisterRouteState();
}

class _RegisterRouteState extends State<RegisterRoute> {
  RegisterStore _store;
  List<ReactionDisposer> _disposers;

  CancelFunc _toastDismiss;

  @override
  void initState() {
    _store ??= sl.get<RegisterStore>();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _disposers ??= [
      reaction(
        // Observe in page
        // Tell the reaction which observable to observe
        (_) => _store.errorMessage,
        // Run some logic with the content of the observed field
        (String message) {
          if (message != null && message.isNotEmpty) {
            callToastError(message, delayedMilli: 200);
          }
        },
      ),
      /* Reaction on register action */
      reaction(
        // Observe in page
        // Tell the reaction which observable to observe
        (_) => _store.waitForRegister,
        // Run some logic with the content of the observed field
        (bool wait) {
          debugPrint('reaction on wait register: $wait');
          if (wait) {
            _toastDismiss = callToastLoading();
          } else if (_toastDismiss != null) {
            _toastDismiss();
            _toastDismiss = null;
          }
        },
      ),
      /* Reaction on register result changed */
      reaction(
        // Observe in page
        // Tell the reaction which observable to observe
        (_) => _store.registerResult,
        // Run some logic with the content of the observed field
        (result) {
          debugPrint('reaction on register result: $result');
          if (result == null) return;
          if (result.isSuccess) {
            callToastInfo(
                MessageMap.getSuccessMessage(result.msg, RouteEnum.REGISTER),
                icon: Icons.check_circle_outline);
          }
        },
      ),
    ];
  }

  @override
  void dispose() {
    try {
      if (_toastDismiss != null) {
        _toastDismiss();
        _toastDismiss = null;
      }
      _disposers.forEach((d) => d());
      _store.closeStreams();
    } on Exception {}
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        debugPrint('pop register route');
        AppNavigator.back();
        return Future(() => true);
      },
      child: Scaffold(
        body: Container(
          width: Global.device.width,
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 12.0),
          child: InkWell(
            // to dismiss the keyboard when the user tabs out of the TextField
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            focusColor: Colors.transparent,
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: RegisterStoreInheritedWidget(
              store: _store,
              child: RegisterDisplay(),
            ),
          ),
        ),
      ),
    );
  }
}
