import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eg990_mobile/presentation/common/other/loading_widget.dart';
import 'package:flutter_eg990_mobile/presentation/export_internal_file.dart';
import 'package:flutter_eg990_mobile/presentation/features/home/data/entity/game_entity.dart';
import 'package:flutter_eg990_mobile/presentation/features/home/data/entity/game_platform_entity.dart';
import 'package:flutter_eg990_mobile/presentation/features/home/data/form/platform_game_form.dart';
import 'package:flutter_eg990_mobile/presentation/features/home/presentation/state/home_store.dart';
import 'package:flutter_eg990_mobile/presentation/router/app_navigator.dart';

import 'games_grid.dart';

class GamesPage extends StatefulWidget {
  final GamePlatformEntity platform;
  final HomeStore store;

  GamesPage({
    Key key,
    @required this.store,
    @required this.platform,
  }) : super(key: key);

  @override
  _GamesPageState createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  // PageController _pageController;
  // int _selectedIndex = 0;

  Future<List<GameEntity>> _allGamesFuture;

  PlatformGameForm _createForm() => PlatformGameForm(
        category: widget.platform.category,
        platform: widget.platform.site,
      );

  String _getMapKey() => '${widget.platform.site}/${widget.platform.category}';

  void _createAllGamesFuture() {
    _allGamesFuture ??= Future<List<GameEntity>>.microtask(() {
      final key = _getMapKey();
      if (widget.store.hasPlatformGames(key)) {
        return widget.store.getPlatformGames(key);
      } else {
        return Future.microtask(
            () => widget.store.getGames(_createForm(), key));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    // Create TabController for getting the index of current tab
    _tabController = TabController(length: 3, vsync: this);
    // _tabController.addListener(() {
    //   setState(() {
    //     _selectedIndex = _tabController.index;
    //   });
    //   debugPrint("Selected Index: " + _tabController.index.toString());
    // });

    _createAllGamesFuture();
  }

  @override
  void dispose() {
    try {
      if (_tabController != null) _tabController.dispose();
    } catch (e) {
      MyLogger.debug(
        msg:
            'dispose games tab controller (${widget.platform.className}) has exception: $e',
        tag: "GamesPage",
      );
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        debugPrint('pop games page');
        Future.delayed(Duration(milliseconds: 100), () => AppNavigator.back());
        return Future(() => true);
      },
      child: Scaffold(
        backgroundColor: themeColor.defaultLayeredBackgroundColor,
        appBar: AppBar(
          leadingWidth: 0.0,
          title: TabBar(
            onTap: (index) {},
            controller: _tabController,
            unselectedLabelColor: themeColor.defaultHintColor,
            labelColor: themeColor.defaultTextColor,
            labelStyle: TextStyle(fontSize: FontSize.MESSAGE.value),
            indicatorColor: themeColor.defaultAccentColor,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(text: localeStr.gameCategoryAll),
              Tab(text: localeStr.homeUserTabCategoryRecommend),
              Tab(text: localeStr.homeUserTabCategoryFavorite),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            FutureBuilder(
              future: _allGamesFuture,
              builder: (_, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return GamesGrid(
                    games: snapshot?.data ?? [],
                    onTap: (url) {
                      debugPrint('requesting game url: $url');
                      // final toast = callToastLoading(
                      //   message: localeStr.messageWait,
                      //   clickClose: false,
                      // );
                      // Future.microtask(() => widget.store.getGameUrl(url))
                      //     .whenComplete(() => toast());
                    },
                  );
                } else {
                  return LoadingWidget();
                }
              },
            ),
            Center(child: Text(localeStr.workInProgress)),
            Center(child: Text(localeStr.workInProgress)),
          ],
        ),
      ),
    );
  }
}
