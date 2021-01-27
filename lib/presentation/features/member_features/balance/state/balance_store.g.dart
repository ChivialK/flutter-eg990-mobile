// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BalanceStore on _BalanceStore, Store {
  Computed<BalanceStoreState> _$stateComputed;

  @override
  BalanceStoreState get state =>
      (_$stateComputed ??= Computed<BalanceStoreState>(() => super.state,
              name: '_BalanceStore.state'))
          .value;

  final _$_initFutureAtom = Atom(name: '_BalanceStore._initFuture');

  @override
  ObservableFuture<List<void>> get _initFuture {
    _$_initFutureAtom.reportRead();
    return super._initFuture;
  }

  @override
  set _initFuture(ObservableFuture<List<void>> value) {
    _$_initFutureAtom.reportWrite(value, super._initFuture, () {
      super._initFuture = value;
    });
  }

  final _$balanceUpdatedAtom = Atom(name: '_BalanceStore.balanceUpdated');

  @override
  String get balanceUpdated {
    _$balanceUpdatedAtom.reportRead();
    return super.balanceUpdated;
  }

  @override
  set balanceUpdated(String value) {
    _$balanceUpdatedAtom.reportWrite(value, super.balanceUpdated, () {
      super.balanceUpdated = value;
    });
  }

  final _$waitForTransferResultAtom =
      Atom(name: '_BalanceStore.waitForTransferResult');

  @override
  bool get waitForTransferResult {
    _$waitForTransferResultAtom.reportRead();
    return super.waitForTransferResult;
  }

  @override
  set waitForTransferResult(bool value) {
    _$waitForTransferResultAtom.reportWrite(value, super.waitForTransferResult,
        () {
      super.waitForTransferResult = value;
    });
  }

  final _$transferResultAtom = Atom(name: '_BalanceStore.transferResult');

  @override
  TransferResult get transferResult {
    _$transferResultAtom.reportRead();
    return super.transferResult;
  }

  @override
  set transferResult(TransferResult value) {
    _$transferResultAtom.reportWrite(value, super.transferResult, () {
      super.transferResult = value;
    });
  }

  final _$waitForWithdrawResultAtom =
      Atom(name: '_BalanceStore.waitForWithdrawResult');

  @override
  bool get waitForWithdrawResult {
    _$waitForWithdrawResultAtom.reportRead();
    return super.waitForWithdrawResult;
  }

  @override
  set waitForWithdrawResult(bool value) {
    _$waitForWithdrawResultAtom.reportWrite(value, super.waitForWithdrawResult,
        () {
      super.waitForWithdrawResult = value;
    });
  }

  final _$withdrawResultAtom = Atom(name: '_BalanceStore.withdrawResult');

  @override
  WithdrawModel get withdrawResult {
    _$withdrawResultAtom.reportRead();
    return super.withdrawResult;
  }

  @override
  set withdrawResult(WithdrawModel value) {
    _$withdrawResultAtom.reportWrite(value, super.withdrawResult, () {
      super.withdrawResult = value;
    });
  }

  final _$errorMessageAtom = Atom(name: '_BalanceStore.errorMessage');

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
      AsyncAction('_BalanceStore.getInitializeData');

  @override
  Future<void> getInitializeData() {
    return _$getInitializeDataAsyncAction.run(() => super.getInitializeData());
  }

  final _$getWalletAsyncAction = AsyncAction('_BalanceStore.getWallet');

  @override
  Future<void> getWallet() {
    return _$getWalletAsyncAction.run(() => super.getWallet());
  }

  final _$getPromisesAsyncAction = AsyncAction('_BalanceStore.getPromises');

  @override
  Future<void> getPromises() {
    return _$getPromisesAsyncAction.run(() => super.getPromises());
  }

  final _$getBalancesAsyncAction = AsyncAction('_BalanceStore.getBalances');

  @override
  Future<void> getBalances() {
    return _$getBalancesAsyncAction.run(() => super.getBalances());
  }

  final _$getBalanceSilentAsyncAction =
      AsyncAction('_BalanceStore.getBalanceSilent');

  @override
  Future<void> getBalanceSilent(String platform) {
    return _$getBalanceSilentAsyncAction
        .run(() => super.getBalanceSilent(platform));
  }

  final _$getBalanceAsyncAction = AsyncAction('_BalanceStore.getBalance');

  @override
  Future<void> getBalance(String platform) {
    return _$getBalanceAsyncAction.run(() => super.getBalance(platform));
  }

  final _$exeGridActionAsyncAction = AsyncAction('_BalanceStore.exeGridAction');

  @override
  Future<void> exeGridAction(BalanceGridAction action) {
    return _$exeGridActionAsyncAction.run(() => super.exeGridAction(action));
  }

  final _$postTransferAsyncAction = AsyncAction('_BalanceStore.postTransfer');

  @override
  Future<void> postTransfer(TransferForm form) {
    return _$postTransferAsyncAction.run(() => super.postTransfer(form));
  }

  final _$postWithdrawAsyncAction = AsyncAction('_BalanceStore.postWithdraw');

  @override
  Future<void> postWithdraw(WithdrawForm form) {
    return _$postWithdrawAsyncAction.run(() => super.postWithdraw(form));
  }

  @override
  String toString() {
    return '''
balanceUpdated: ${balanceUpdated},
waitForTransferResult: ${waitForTransferResult},
transferResult: ${transferResult},
waitForWithdrawResult: ${waitForWithdrawResult},
withdrawResult: ${withdrawResult},
errorMessage: ${errorMessage},
state: ${state}
    ''';
  }
}