import 'dart:math';

import 'package:flutter_ty_mobile/core/mobx_store_export.dart';

import '../../data/models/movie_category_model.dart';
import '../../data/models/movie_hot_model.dart';
import '../../data/models/movie_model.dart';
import '../../data/models/movie_post_model.dart';
import '../../data/repository/movie_repository.dart';
import '../data/movie_rate.dart';
import '../data/movie_route_form.dart';

part 'movie_store.g.dart';

class MovieStore = _MovieStore with _$MovieStore;

enum MovieStoreState { initial, loading, loaded }

abstract class _MovieStore with Store {
  final MovieRepository _repository;

  final StreamController<MoviePostData> _moviePostController =
      new StreamController<MoviePostData>.broadcast();
  final StreamController<List<MovieHotModel>> _hotMoviesController =
      new StreamController<List<MovieHotModel>>.broadcast();
  final StreamController<String> _movieStreamController =
      new StreamController<String>.broadcast();

  _MovieStore(this._repository);

  @observable
  String errorMessage;

  @observable
  ObservableFuture _tabInitFuture;

  @observable
  ObservableFuture _routeInitFuture;

  @observable
  bool waitForTabInitializeData = false;

  @observable
  bool waitForRouteInitializeData = false;

  @observable
  bool waitForMovieData = false;

  @observable
  bool changeCategory = false;

  @observable
  bool waitForMoviePost = false;

  @observable
  bool waitForHotMovies = false;

  bool waitForVerify = false;

  dynamic _lastEgHotMovieTid;
  dynamic _currentEgMovieTid;
  int _currentMoviePage = 1;

  get tabPageMovieTid => _currentEgMovieTid;

  get hotMovieTid => _lastEgHotMovieTid;

  List<MovieCategoryModel> categories;
  List<MovieModel> movies;
  List<MovieHotModel> hotMovies;
  MoviePostData moviePost;

  Stream<MoviePostData> get moviePostStream => _moviePostController.stream;
  Stream<List<MovieHotModel>> get hotMoviesStream =>
      _hotMoviesController.stream;
  Stream<String> get movieUrlStream => _movieStreamController.stream;

  /// Movie Tab Page
  @computed
  MovieStoreState get tabState {
    // If the user has not yet triggered a action or there has been an error
    if (_tabInitFuture == null ||
        _tabInitFuture.status == FutureStatus.rejected) {
      return MovieStoreState.initial;
    }
    // Pending Future means "loading"
    // Fulfilled Future means "loaded"
    return _tabInitFuture.status == FutureStatus.pending
        ? MovieStoreState.loading
        : MovieStoreState.loaded;
  }

  @action
  Future<void> getTabInitializeData() async {
    try {
      // Reset the possible previous error message.
      errorMessage = null;
      waitForTabInitializeData = true;
      // Fetch from the repository and wrap the regular Future into an observable.
      _tabInitFuture = ObservableFuture(Future.sync(() async {
        await _repository.getEgCategory().then(
              (result) => result.fold(
                (failure) => errorMessage = failure.message,
                (list) {
                  print('first movie category: ${list.first}');
                  categories = list;
                  _currentEgMovieTid = categories.first.tid;
                },
              ),
            );
      }).then((value) async {
        await _repository.getEgMovieList(tid: _currentEgMovieTid).then(
              (result) => result.fold(
                (failure) => errorMessage = failure.message,
                (list) => movies = list,
              ),
            );
      }));
      // ObservableFuture extends Future - it can be awaited and exceptions will propagate as usual.
      await _tabInitFuture.whenComplete(() => waitForTabInitializeData = false);
    } on Exception {
      waitForTabInitializeData = false;
      //errorMessage = "Couldn't fetch description. Is the device online?";
      errorMessage =
          Failure.internal(FailureCode(type: FailureType.MOVIE_TAB)).message;
    }
  }

  @action
  Future<int> getEgMovies({dynamic tid}) async {
    try {
      if (waitForMovieData) _repository.cancelLastMovieListRequest();
      if (tid != null) {
        _currentMoviePage = 1;
        changeCategory = true;
      } else {
        _currentMoviePage += 1;
        changeCategory = false;
      }
      // Reset the possible previous error message.
      errorMessage = null;
      waitForMovieData = true;
      // ObservableFuture extends Future - it can be awaited and exceptions will propagate as usual.
      final id = tid ?? _currentEgMovieTid;
      print('requesting $id movie page $_currentMoviePage...');
      return await _repository
          .getEgMovieList(tid: id, page: _currentMoviePage)
          .then(
            (result) => result.fold(
              (failure) {
                errorMessage = failure.message;
                if (_currentMoviePage <= 1 || movies == null) movies = [];
                return -1;
              },
              (list) {
                if (_currentMoviePage > 1)
                  movies += list;
                else
                  movies = list;
                print('update eg movies: ${movies.length}');
                if (movies.isNotEmpty)
                  return movies.first.mid;
                else
                  return -1;
              },
            ),
          )
          .whenComplete(() {
        if (tid != null) _currentEgMovieTid = tid;
        waitForMovieData = false;
      });
    } on Exception {
      waitForMovieData = false;
      errorMessage =
          Failure.internal(FailureCode(type: FailureType.MOVIE_TAB)).message;
      if (_currentMoviePage <= 1 || movies == null) movies = [];
      return -1;
    }
  }

  /// Movie Route
  @computed
  MovieStoreState get egRouteState {
    // If the user has not yet triggered a action or there has been an error
    if (_routeInitFuture == null ||
        _routeInitFuture.status == FutureStatus.rejected) {
      return MovieStoreState.initial;
    }
    // Pending Future means "loading"
    // Fulfilled Future means "loaded"
    return _routeInitFuture.status == FutureStatus.pending
        ? MovieStoreState.loading
        : MovieStoreState.loaded;
  }

  @action
  Future<void> getRouteInitializeData(MovieRouteForm form) async {
    try {
      // Reset the possible previous error message.
      errorMessage = null;
      waitForRouteInitializeData = true;
      // Fetch from the repository and wrap the regular Future into an observable.
      _routeInitFuture = ObservableFuture(Future.sync(() async {
        await getEgMoviePost(form).then((value) async {
          if (categories == null) {
            await _repository.getEgCategory().then(
                  (result) => result.fold(
                    (failure) => errorMessage = failure.message,
                    (list) {
                      print('first movie category: ${list.first}');
                      categories = list;
                      _currentEgMovieTid = categories.first.tid;
                    },
                  ),
                );
          }
        });
      }));
      // ObservableFuture extends Future - it can be awaited and exceptions will propagate as usual.
      await _routeInitFuture
          .whenComplete(() => waitForRouteInitializeData = false);
    } on Exception {
      waitForRouteInitializeData = false;
      //errorMessage = "Couldn't fetch description. Is the device online?";
      errorMessage =
          Failure.internal(FailureCode(type: FailureType.MOVIE)).message;
    }
  }

  @action
  Future<void> getEgMoviePost(MovieRouteForm form) async {
    if (moviePost != null &&
        moviePost.mid == form.mid &&
        moviePost.tid == form.tid) return;
    try {
      // Reset the possible previous error message.
      errorMessage = null;
      waitForMoviePost = true;
      // ObservableFuture extends Future - it can be awaited and exceptions will propagate as usual.
      print('tab page tid: $_currentEgMovieTid');
      print('request movie post form: $form');
      print('requesting ${form.tid}-${form.mid} movie post...');
      await _repository
          .getEgMoviePost(tid: form.tid, mid: form.mid)
          .then(
            (result) => result.fold(
              (failure) => errorMessage = failure.message,
              (data) {
                print(
                    'eg movie post: ${data.post}, hots: ${data.hotList.length}');
                moviePost = data.post;
                _moviePostController.sink.add(moviePost);

                // if last selected category in tab page is COLLECT or OWN
                // request movie using tid
                if (form.highlight != null &&
                    (form.highlight is String || form.highlight < 0)) {
                  getEgHotMovies(tid: form.highlight);
                } else if (_lastEgHotMovieTid == null ||
                    _lastEgHotMovieTid is int) {
                  // if current display page category is not COLLECT or OWN
                  // sink the hot movie list
                  hotMovies = data.hotList;
                  _hotMoviesController.sink.add(hotMovies);
                }
              },
            ),
          )
          .whenComplete(() => waitForMoviePost = false);
    } on Exception {
      waitForMoviePost = false;
      errorMessage =
          Failure.internal(FailureCode(type: FailureType.MOVIE)).message;
    }
  }

  @action
  Future<void> getEgHotMovies({dynamic tid}) async {
    try {
      var nTid = tid;
      if (nTid == null) {
        int randomIndex = Random().nextInt(categories.length - 1);
        nTid = categories[randomIndex].tid;
      }
      // Reset the possible previous error message.
      errorMessage = null;
      waitForHotMovies = true;
      // ObservableFuture extends Future - it can be awaited and exceptions will propagate as usual.
      print('requesting $nTid hot movies...');
      await _repository
          .getEgHotMovies(tid: nTid)
          .then(
            (result) => result.fold(
              (failure) {
                errorMessage = failure.message;
                if (hotMovies == null) {
                  hotMovies = [];
                  _hotMoviesController.sink.add(hotMovies);
                }
              },
              (list) {
                print('eg hot movies: ${list.length}');
                if (tid != null ||
                    nTid is String ||
                    _lastEgHotMovieTid is String)
                  hotMovies = list;
                else if (hotMovies != null)
                  hotMovies += list;
                else
                  hotMovies = list;

                _lastEgHotMovieTid = nTid;
                _hotMoviesController.sink.add(hotMovies);
              },
            ),
          )
          .whenComplete(() => waitForHotMovies = false);
    } on Exception {
      waitForHotMovies = false;
      errorMessage =
          Failure.internal(FailureCode(type: FailureType.MOVIE)).message;
    }
  }

  @action
  Future<bool> setFavoriteMovie(int mid, bool isFavorite) async {
    try {
      // Reset the possible previous error message.
      errorMessage = null;
      // ObservableFuture extends Future - it can be awaited and exceptions will propagate as usual.
      return await _repository
          .postEgMovieFavorite(mid: mid, isFavorite: isFavorite)
          .then((result) => result.fold(
                (failure) {
                  errorMessage = failure.message;
                  return false;
                },
                (data) {
                  print('set movie $mid favorite($isFavorite) success = $data');
                  return data;
                },
              ));
    } on Exception {
      errorMessage =
          Failure.internal(FailureCode(type: FailureType.MOVIE)).message;
      return false;
    }
  }

  @action
  Future<bool> setMovieRate(int mid, MovieRate rate) async {
    try {
      // Reset the possible previous error message.
      errorMessage = null;
      // ObservableFuture extends Future - it can be awaited and exceptions will propagate as usual.
      return await _repository
          .postEgMovieHobby(mid: mid, hobby: rate.value)
          .then((result) => result.fold(
                (failure) {
                  errorMessage = failure.message;
                  return false;
                },
                (data) {
                  print('set movie $mid rate(${rate.value}) success = $data');
                  return data;
                },
              ));
    } on Exception {
      errorMessage =
          Failure.internal(FailureCode(type: FailureType.MOVIE)).message;
      return false;
    }
  }

  @action
  Future<bool> watchFreeMovie(int mid) async {
    try {
      // Reset the possible previous error message.
      errorMessage = null;
      // ObservableFuture extends Future - it can be awaited and exceptions will propagate as usual.
      /// return true to show bind mobile dialog, return false to close buy dialog
      return await _repository
          .postEgMovieFree(mid: mid)
          .then((result) => result.fold(
                (failure) {
                  errorMessage = failure.message;
                  return null;
                },
                (data) {
                  print('watch free movie $mid success = $data');
                  if (data.isSuccess) {
                    _movieStreamController.sink.add(data.data);
                    return false;
                  } else if (data.msg == 'NoBindMobile') {
                    return true;
                  } else {
                    errorMessage = data.msg;
                    return null;
                  }
                },
              ));
    } on Exception {
      errorMessage =
          Failure.internal(FailureCode(type: FailureType.MOVIE)).message;
      return null;
    }
  }

  @action
  Future<bool> buyMovie(int mid) async {
    try {
      // Reset the possible previous error message.
      errorMessage = null;
      // ObservableFuture extends Future - it can be awaited and exceptions will propagate as usual.
      /// return true to show bind mobile dialog, return false to close buy dialog
      return await _repository
          .postEgMovieBuy(mid: mid)
          .then((result) => result.fold(
                (failure) {
                  errorMessage = failure.message;
                  return null;
                },
                (data) {
                  print('buy movie $mid success = $data');
                  if (data.isSuccess) {
                    _movieStreamController.sink.add(data.data);
                    return false;
                  } else if (data.msg == 'NoBindMobile') {
                    return true;
                  } else {
                    errorMessage = data.msg;
                    return null;
                  }
                },
              ));
    } on Exception {
      errorMessage =
          Failure.internal(FailureCode(type: FailureType.MOVIE)).message;
      return null;
    }
  }

  @action
  Future<String> requestVerifyPhone(String mobile) async {
    if (waitForVerify) return null;
    try {
      // Reset the possible previous error message.
      errorMessage = null;
      waitForVerify = true;
      // Fetch from the repository and wrap the regular Future into an observable.
      // ObservableFuture extends Future - it can be awaited and exceptions will propagate as usual.
      return await _repository.requestPhoneVerifyCode(mobile).then((result) {
        print('movie verify phone request result: $result');
        return result.fold(
          (failure) {
            errorMessage = failure.message;
            return '';
          },
          (data) => data.msg,
        );
      }).whenComplete(() => waitForVerify = false);
    } on Exception {
      waitForVerify = false;
      errorMessage =
          Failure.internal(FailureCode(type: FailureType.MOVIE)).message;
      return '';
    }
  }

  @action
  Future<bool> postPhoneVerifyCode(String mobile, String code) async {
    if (waitForVerify) return null;
    try {
      // Reset the possible previous error message.
      errorMessage = null;
      waitForVerify = true;
      // Fetch from the repository and wrap the regular Future into an observable.
      // ObservableFuture extends Future - it can be awaited and exceptions will propagate as usual.
      return await _repository.postPhoneVerifyCode(mobile, code).then((result) {
        print('movie verify phone result: $result');
        return result.fold(
          (failure) {
            errorMessage = failure.message;
            return false;
          },
          (data) {
            if (data.isSuccess == false) errorMessage = data.msg;
            return data.isSuccess;
          },
        );
      }).whenComplete(() => waitForVerify = false);
    } on Exception {
      waitForVerify = false;
      errorMessage =
          Failure.internal(FailureCode(type: FailureType.MOVIE)).message;
      return false;
    }
  }

  void resetVariable() {
    _currentEgMovieTid = null;
    _currentMoviePage = 1;
  }

  void resetHotVariable() {
    _lastEgHotMovieTid = null;
    hotMovies = null;
  }

  Future<void> closeStreams() {
    try {
      return Future.wait([
        _movieStreamController.close(),
        _moviePostController.close(),
        _hotMoviesController.close(),
      ]);
    } catch (e) {
      MyLogger.warn(
          msg: 'close movie stream error', error: e, tag: 'MovieStore');
      return null;
    }
  }
}
