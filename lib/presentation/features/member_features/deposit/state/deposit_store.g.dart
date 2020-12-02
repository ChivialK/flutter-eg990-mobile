// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deposit_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DepositStore on _DepositStore, Store {
  Computed<DepositStoreState> _$stateComputed;

  @override
  DepositStoreState get state =>
      (_$stateComputed ??= Computed<DepositStoreState>(() => super.state,
              name: '_DepositStore.state'))
          .value;

  final _$_initFutureAtom = Atom(name: '_DepositStore._initFuture');

  @override
  ObservableFuture<void> get _initFuture {
    _$_initFutureAtom.reportRead();
    return super._initFuture;
  }

  @override
  set _initFuture(ObservableFuture<void> value) {
    _$_initFutureAtom.reportWrite(value, super._initFuture, () {
      super._initFuture = value;
    });
  }

  final _$infoListAtom = Atom(name: '_DepositStore.infoList');

  @override
  List<DepositInfo> get infoList {
    _$infoListAtom.reportRead();
    return super.infoList;
  }

  @override
  set infoList(List<DepositInfo> value) {
    _$infoListAtom.reportWrite(value, super.infoList, () {
      super.infoList = value;
    });
  }

  final _$waitForDepositResultAtom =
      Atom(name: '_DepositStore.waitForDepositResult');

  @override
  bool get waitForDepositResult {
    _$waitForDepositResultAtom.reportRead();
    return super.waitForDepositResult;
  }

  @override
  set waitForDepositResult(bool value) {
    _$waitForDepositResultAtom.reportWrite(value, super.waitForDepositResult,
        () {
      super.waitForDepositResult = value;
    });
  }

  final _$depositResultAtom = Atom(name: '_DepositStore.depositResult');

  @override
  DepositResult get depositResult {
    _$depositResultAtom.reportRead();
    return super.depositResult;
  }

  @override
  set depositResult(DepositResult value) {
    _$depositResultAtom.reportWrite(value, super.depositResult, () {
      super.depositResult = value;
    });
  }

  final _$errorMessageAtom = Atom(name: '_DepositStore.errorMessage');

  @override
  String get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  final _$getInitializeDataAsyncAction =
      AsyncAction('_DepositStore.getInitializeData');

  @override
  Future<dynamic> getInitializeData() {
    return _$getInitializeDataAsyncAction.run(() => super.getInitializeData());
  }

  final _$getTypesAsyncAction = AsyncAction('_DepositStore.getTypes');

  @override
  Future<void> getTypes() {
    return _$getTypesAsyncAction.run(() => super.getTypes());
  }

  final _$getPromosAsyncAction = AsyncAction('_DepositStore.getPromos');

  @override
  Future<void> getPromos() {
    return _$getPromosAsyncAction.run(() => super.getPromos());
  }

  final _$getDepositInfoAsyncAction =
      AsyncAction('_DepositStore.getDepositInfo');

  @override
  Future<void> getDepositInfo() {
    return _$getDepositInfoAsyncAction.run(() => super.getDepositInfo());
  }

  final _$getBankMapAsyncAction = AsyncAction('_DepositStore.getBankMap');

  @override
  Future<void> getBankMap() {
    return _$getBankMapAsyncAction.run(() => super.getBankMap());
  }

  final _$getRuleMapAsyncAction = AsyncAction('_DepositStore.getRuleMap');

  @override
  Future<void> getRuleMap() {
    return _$getRuleMapAsyncAction.run(() => super.getRuleMap());
  }

  final _$sendRequestAsyncAction = AsyncAction('_DepositStore.sendRequest');

  @override
  Future<void> sendRequest(DepositForm form) {
    return _$sendRequestAsyncAction.run(() => super.sendRequest(form));
  }

  @override
  String toString() {
    return '''
infoList: ${infoList},
waitForDepositResult: ${waitForDepositResult},
depositResult: ${depositResult},
errorMessage: ${errorMessage},
state: ${state}
    ''';
  }
}
