import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/core/error/failures.dart';
import 'package:flutter_ty_mobile/core/internal/local_strings.dart';
import 'package:flutter_ty_mobile/core/internal/themes.dart';
import 'package:flutter_ty_mobile/features/general/widgets/customize_dropdown_widget.dart';
import 'package:flutter_ty_mobile/features/general/widgets/customize_field_widget.dart';
import 'package:flutter_ty_mobile/features/general/widgets/message_display.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/entity/payment_enum.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/form/deposit_form.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/model/payment_freezed.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/model/payment_promo.dart';
import 'package:flutter_ty_mobile/mylogger.dart';
import 'package:flutter_ty_mobile/utils/string_util.dart'
    show ValueStringExtension;
import 'package:flutter_ty_mobile/utils/value_range.dart';
import 'package:intl/intl.dart' show NumberFormat;

/// Content View for [PaymentEnum.bank]
///@author H.C.CHIANG
///@version 2020/3/26
class PaymentContentLocal extends StatefulWidget {
  final List<PaymentFreezed> dataList;
  final List<PaymentPromoData> promoList;
  final Function depositFuncCall;

  PaymentContentLocal({this.dataList, this.promoList, this.depositFuncCall});

  @override
  _PaymentContentLocalState createState() => _PaymentContentLocalState();
}

class _PaymentContentLocalState extends State<PaymentContentLocal> {
  final String tag = 'PaymentContentLocal';
  static final GlobalKey<FormState> _formKey =
      new GlobalKey(debugLabel: 'form');

  final GlobalKey<CustomizeFieldWidgetState> _nameFieldKey =
      new GlobalKey(debugLabel: 'name');
  final GlobalKey<CustomizeFieldWidgetState> _amountFieldKey =
      new GlobalKey(debugLabel: 'amount');

  PaymentDataLocal _localData;
  int _promoSelected = -1;
  int _bankSelectedIndex = -1;
  int _bankSelectedId = -1;
  int _methodSelected;

  void _validateForm() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
//      print('The user wants to login with $_username and $_password');
      DepositDataForm dataForm = DepositDataForm(
        bankIndex: _bankSelectedIndex,
        methodId: _methodSelected,
        name: _nameFieldKey.currentState.inputText,
        bankId: _bankSelectedId,
        amount: _amountFieldKey.currentState.inputText,
        promoId: _promoSelected,
      );
      print('deposit form: ${dataForm.toJson()}');
      widget.depositFuncCall(dataForm);
    }
  }

  @override
  void initState() {
    _localData = widget.dataList[0];
    _methodSelected ??= 1;
    _bankSelectedId = _localData.bankAccountId;
    _bankSelectedIndex = _localData.bankIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.dataList == null || widget.dataList.isEmpty) {
      return Center(
        child: MessageDisplay(
          message: Failure.dataSource().message,
        ),
      );
    } else {
      List<String> methods = [
        localeStr.depositPaymentMethodLocal1,
        localeStr.depositPaymentMethodLocal2,
      ];
      List<PaymentPromoData> promos = [
        PaymentPromoData(
          promoId: -1,
          promoDesc: localeStr.depositPaymentNoPromo,
        ),
      ];
      promos.addAll(widget.promoList);
      return InkWell(
        // to dismiss the keyboard when the user tabs out of the TextField
        splashColor: Colors.transparent,
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Column(
          children: <Widget>[
//            Text(widget.dataList.toString()),
//            SizedBox(height: 8.0),
//            Text(widget.promoList.toString()),
            new Form(
              key: _formKey,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  /* Promo Option */
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: CustomizeDropdownWidget(
                      prefixTitle: localeStr.depositPaymentSpinnerTitlePromo,
                      spacing: 4,
                      optionValues: promos.map((item) => item.promoId).toList(),
                      optionStrings:
                          promos.map((item) => item.promoDesc).toList(),
                      changeNotify: (data) {
                        if (data is PaymentPromoData)
                          _promoSelected = data.promoId;
                      },
                    ),
                  ),
                  /* Bank Option */
                  CustomizeDropdownWidget(
                    prefixTitle: localeStr.depositPaymentSpinnerTitleBank,
                    spacing: 4,
                    optionValues: widget.dataList
                        .map((item) => item.bankAccountId)
                        .toList(),
                    optionStrings:
                        widget.dataList.map((item) => item.type).toList(),
                    changeNotify: (data) {
                      if (data is PaymentDataLocal) {
                        if (_localData == data) return;
                        print('change bank: $data');
                        _bankSelectedId = data.bankAccountId;
                        _bankSelectedIndex = data.bankIndex;
                        setState(() {
                          _localData = data;
                        });
                      }
                    },
                  ),
                  /* Account Hint */
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 6.0),
                    child: Text(
                      localeStr.depositHintTextAccount,
                      style: TextStyle(color: Themes.hintHighlight),
                    ),
                  ),
                  /* Method Option */
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: CustomizeDropdownWidget(
                      prefixTitle: localeStr.depositPaymentSpinnerTitleMethod,
                      spacing: 4,
                      optionStrings: methods,
                      optionValues: [1, 2],
                      changeNotify: (data) {
                        _methodSelected = data;
                      },
                    ),
                  ),
                  /* Name Input Field */
                  new CustomizeFieldWidget(
                    key: _nameFieldKey,
                    fieldType: FieldType.ChineseOnly,
                    hint: localeStr.depositPaymentEditTitleNameHint,
                    persistHint: false,
                    prefixTitle: localeStr.depositPaymentEditTitleName,
                    errorMsg: localeStr.messageInvalidDepositName,
                    validCondition: (value) =>
                        rangeCheck(value: value.length, min: 2, max: 12),
                    parentWidth: MediaQuery.of(context).size.width,
                    spacing: 0.5,
                    maxInputLength: 12,
                  ),
                  /* Amount Input Field */
                  new CustomizeFieldWidget(
                    key: _amountFieldKey,
                    fieldType: FieldType.Numbers,
                    hint: localeStr.depositPaymentEditTitleAmountHintRange(
                      _localData.min?.valueToInt ?? 1,
                      _localData.max.valueToInt,
                    ),
                    persistHint: false,
                    prefixTitle: localeStr.depositPaymentEditTitleAmount,
                    errorMsg: localeStr.messageInvalidDepositAmount,
                    validCondition: (value) =>
                        value.contains('.') == false &&
                        rangeCheck(
                          value: (value.isNotEmpty) ? int.parse(value) : 0,
                          min: _localData.min?.valueToInt ?? 1,
                          max: _localData.max.valueToInt,
                        ),
                    parentWidth: MediaQuery.of(context).size.width,
                    spacing: 4,
                    maxInputLength: _localData.max.length,
                  ),
                  /* Amount Limit Hint */
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4.0, 2.0, 4.0, 6.0),
                    child: Text(
                      localeStr.depositHintTextAmount(
                          NumberFormat.simpleCurrency(decimalDigits: 0)
                              .format(_localData.max.valueToInt)),
                      style: TextStyle(color: Themes.hintHighlight),
                    ),
                  ),
                ],
              ),
            ),
            /* Confirm Button */
            Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    child: Text(localeStr.btnConfirm),
                    color: Themes.defaultAccentColor,
                    textColor: Themes.defaultTextColorBlack,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    onPressed: () {
                      try {
                        _validateForm();
                      } catch (e) {
                        MyLogger.error(
                            msg: 'form error: $e', error: e, tag: tag);
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
}
