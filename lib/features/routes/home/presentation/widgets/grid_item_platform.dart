import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eg990_mobile/features/general/widgets/cached_network_image.dart';
import 'package:flutter_eg990_mobile/features/themes/theme_interface.dart';

import 'grid_plugin_favorite.dart';

class GridItemPlatform2 extends StatelessWidget {
  final String imgUrl;
  final String label;
  final bool isFavorite;
  final double imageSize;
  final FontSize fontSize;
  final double labelHeight;
  final double labelMaxWidthFactor;
  final double verticalSpaceAroundLabel;
  final PluginTapAction pluginTapAction;

  GridItemPlatform2({
    @required this.imgUrl,
    @required this.label,
    @required this.isFavorite,
    @required this.imageSize,
    @required this.fontSize,
    @required this.labelHeight,
    @required this.labelMaxWidthFactor,
    @required this.verticalSpaceAroundLabel,
    @required this.pluginTapAction,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: imageSize,
      height: imageSize + labelHeight,
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                constraints: BoxConstraints.tight(Size(imageSize, imageSize)),
                padding: (pluginTapAction != null)
                    ? EdgeInsets.only(top: 6.0)
                    : EdgeInsets.zero,
                child: (imgUrl != null)
                    ? Transform.scale(
                        scale: (pluginTapAction != null) ? 0.9 : 0.95,
                        child: networkImageBuilder(imgUrl,
                            addPendingIconOnError: true),
                      )
                    : Center(child: Icon(Icons.broken_image)),
              ),
              Container(
                constraints: BoxConstraints.tight(
                    Size(imageSize * labelMaxWidthFactor, labelHeight)),
                padding: EdgeInsets.only(bottom: verticalSpaceAroundLabel),
                child: AutoSizeText(
                  label ?? '?',
                  style: TextStyle(
                    color: themeColor.defaultGridTextColor,
                  ),
                  maxLines: 1,
                  minFontSize: fontSize.value - 4,
                  maxFontSize: fontSize.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          if (pluginTapAction != null)
            Positioned(
              left: 0,
              top: 0,
              child: GridPluginFavorite(
                initValue: isFavorite,
                onTap: (checked) => pluginTapAction(checked),
              ),
            ),
        ],
      ),
    );
  }
}