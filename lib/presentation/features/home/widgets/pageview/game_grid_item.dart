import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eg990_mobile/domain/sector/home/game/game_entity.dart';
import 'package:flutter_eg990_mobile/presentation/common/images/network_image.dart';
import 'package:flutter_eg990_mobile/presentation/app_theme_export.dart';

class GameGridItem extends StatelessWidget {
  final GameEntity game;

  const GameGridItem({Key key, @required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      child: ColoredBox(
        color: themeColor.defaultBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: NetworkImageBuilder(
                game.imageUrl,
                addLoadingIcon: true,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: FontSize.MESSAGE.value * 2.75,
              padding: const EdgeInsets.fromLTRB(8.0, 4.0, 4.0, 4.0),
              alignment: Alignment.centerLeft,
              child: AutoSizeText.rich(
                TextSpan(text: game.cname.trim()),
                maxLines: 2,
                textAlign: TextAlign.start,
                minFontSize: FontSize.SMALL.value,
                maxFontSize: FontSize.NORMAL.value,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
