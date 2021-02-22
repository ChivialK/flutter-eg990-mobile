part of 'game_category_model.dart';

enum HomeCategoryEnum {
  CASINO,
  SLOT,
  SPORT,
  FISH,
  LOTTERY,
  CARD,
  GIFT,
  COCKFIGHTING,
  RECOMMEND,
  FAVORITE,
  PROMO,
  MOVIE_WEBSITE,
  WEBSITE,
  UNDEFINE,
}

class HomeCategoryInfo {
  final HomeCategoryEnum id;
  final String imageUrl;
  final String assetPath;
  final GamePageType pageType;

  ///
  /// icon needs to be constant, define it in [GameCategoryModel]
  /// if [imageUrl] is empty, will try to use icon
  ///
  const HomeCategoryInfo({
    @required this.id,
    this.imageUrl = '',
    this.assetPath = '',
    this.pageType = GamePageType.Games,
  });
}

@VnumDefinition
class GameCategory extends Vnum<HomeCategoryInfo> {
  /// GAMES
  static const GameCategory casino = const GameCategory.define(HomeCategoryInfo(
    id: HomeCategoryEnum.CASINO,
    // imageUrl: 'images/index/tbico_casino.png',
    // assetPath: Res.phone_nav_casino_Color1,
  ));
  static const GameCategory slot = const GameCategory.define(HomeCategoryInfo(
    id: HomeCategoryEnum.SLOT,
    // imageUrl: 'images/index/tbico_slot.png',
    // assetPath: Res.phone_nav_slot_Color1,
  ));
  static const GameCategory sport = const GameCategory.define(HomeCategoryInfo(
    id: HomeCategoryEnum.SPORT,
    // imageUrl: 'images/index/tbico_sport.png',
    // assetPath: Res.phone_nav_sport_Color1,
  ));
  static const GameCategory fish = const GameCategory.define(HomeCategoryInfo(
    id: HomeCategoryEnum.FISH,
    // imageUrl: 'images/index/tbico_fish.png',
    // assetPath: Res.phone_nav_fish_Color1,
  ));
  static const GameCategory lottery =
      const GameCategory.define(HomeCategoryInfo(
    id: HomeCategoryEnum.LOTTERY,
    // imageUrl: 'images/index/tbico_lottery.png',
    // assetPath: Res.phone_nav_lottery_Color1,
  ));
  static const GameCategory card = const GameCategory.define(HomeCategoryInfo(
    id: HomeCategoryEnum.CARD,
    // imageUrl: 'images/index/tbico_card.png',
    // assetPath: Res.phone_nav_card_Color1,
  ));
  static const GameCategory gift = const GameCategory.define(HomeCategoryInfo(
    id: HomeCategoryEnum.GIFT,
    imageUrl: 'images/index/tbico_gift.png',
  ));
  static const GameCategory cockfighting =
      const GameCategory.define(HomeCategoryInfo(
    id: HomeCategoryEnum.COCKFIGHTING,
    // imageUrl: 'images/phone_nav_cockfighting_Color1.png',
    // assetPath: Res.phone_nav_cockfighting_Color1,
  ));

  /// USER
  static const GameCategory recommend =
      const GameCategory.define(HomeCategoryInfo(
    id: HomeCategoryEnum.RECOMMEND,
    // assetPath: Res.tbico_recommend,
    pageType: GamePageType.Recommend,
  ));
  static const GameCategory favorite =
      const GameCategory.define(HomeCategoryInfo(
    id: HomeCategoryEnum.FAVORITE,
    // assetPath: Res.tbico_fav,
    pageType: GamePageType.Favorite,
  ));

  /// OTHER
  static const GameCategory promo = const GameCategory.define(HomeCategoryInfo(
    id: HomeCategoryEnum.PROMO,
    // imageUrl: '',
    pageType: GamePageType.Promo,
  ));
  static const GameCategory movieWebsite =
      const GameCategory.define(HomeCategoryInfo(
    id: HomeCategoryEnum.MOVIE_WEBSITE,
    // imageUrl: '',
    pageType: GamePageType.MovieWebsite,
  ));
  static const GameCategory website =
      const GameCategory.define(HomeCategoryInfo(
    id: HomeCategoryEnum.WEBSITE,
    // imageUrl: '',
    pageType: GamePageType.Website,
  ));
  static const GameCategory undefined =
      const GameCategory.define(HomeCategoryInfo(
    id: HomeCategoryEnum.UNDEFINE,
    // imageUrl: '',
  ));

  /// Used for defining cases
  const GameCategory.define(HomeCategoryInfo fromValue)
      : super.define(fromValue);

  /// Used for loading enum using value
  factory GameCategory(HomeCategoryInfo value) =>
      Vnum.fromValue(value, GameCategory);

  /// Iterating cases
  /// All value needs to be constant for this to work
  static List<Vnum> get listAll => Vnum.allCasesFor(GameCategory);

  static GameCategory findCategoryById(HomeCategoryEnum id) =>
      GameCategory.listAll.singleWhere(
        (category) => (category.value as HomeCategoryInfo).id == id,
        orElse: () => throw UnknownException(),
      );
}

///
/// Use extension method to get label string,
/// so category name will be update when language changed
///
extension HomeCategoryExtension on HomeCategoryInfo {
  String get label {
    switch (id) {
      case HomeCategoryEnum.CASINO:
        return localeStr.gameCategoryCasinoFull;
      case HomeCategoryEnum.SLOT:
        return localeStr.gameCategorySlotFull;
      case HomeCategoryEnum.SPORT:
        return localeStr.gameCategorySportFull;
      case HomeCategoryEnum.FISH:
        return localeStr.gameCategoryFishFull;
      case HomeCategoryEnum.LOTTERY:
        return localeStr.gameCategoryLotteryFull;
      case HomeCategoryEnum.CARD:
        return localeStr.gameCategoryCardFull;
      case HomeCategoryEnum.GIFT:
        return localeStr.gameCategoryGift;
      case HomeCategoryEnum.COCKFIGHTING:
        return localeStr.gameCategoryCockFighting;
      case HomeCategoryEnum.RECOMMEND:
        return localeStr.homeUserTabCategoryRecommend;
      case HomeCategoryEnum.FAVORITE:
        return localeStr.homeUserTabCategoryFavorite;
      case HomeCategoryEnum.PROMO:
        return localeStr.pageTitlePromo;
      case HomeCategoryEnum.MOVIE_WEBSITE:
        return localeStr.gameCategoryMovieWeb;
      case HomeCategoryEnum.WEBSITE:
        return localeStr.gameCategoryWeb;
      default:
        return '???';
    }
  }

  IconData get iconData {
    switch (id) {
      case HomeCategoryEnum.CASINO:
        return IconCode.tabGameCasino;
      case HomeCategoryEnum.SLOT:
        return IconCode.tabGameSlot;
      case HomeCategoryEnum.SPORT:
        return IconCode.tabGameSport;
      case HomeCategoryEnum.FISH:
        return IconCode.tabGameFish;
      case HomeCategoryEnum.LOTTERY:
        return IconCode.tabGameLottery;
      case HomeCategoryEnum.CARD:
        return IconCode.tabGameCard;
      case HomeCategoryEnum.GIFT:
        return IconCode.tabGameGift;
      case HomeCategoryEnum.COCKFIGHTING:
        return IconCode.tabGameCockFighting;
      case HomeCategoryEnum.RECOMMEND:
        return IconCode.tabGameRec;
      case HomeCategoryEnum.FAVORITE:
        return IconCode.tabGameFav;
      case HomeCategoryEnum.PROMO:
        return IconCode.navPromo;
      case HomeCategoryEnum.MOVIE_WEBSITE:
        return IconCode.tabMovieWebsite;
      case HomeCategoryEnum.WEBSITE:
        return IconCode.tabWebsite;
      default:
        return IconCode.tabUnknown;
    }
  }
}