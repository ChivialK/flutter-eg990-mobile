import 'package:flutter/material.dart';
import 'package:flutter_eg990_mobile/core/internal/global.dart';
import 'package:flutter_eg990_mobile/core/internal/local_strings.dart';
import 'package:flutter_eg990_mobile/features/general/ext/table/table_cell_text_widget.dart';
import 'package:flutter_eg990_mobile/features/themes/theme_interface.dart';
import 'package:flutter_eg990_mobile/utils/value_util.dart';

import '../../data/models/agent_ledger_model.dart';

class AgentDisplayLedgerTable extends StatelessWidget {
  final List<AgentLedgerData> dataList;
  final List<num> sumColumn;
  final double availableHeight;
  final int page;
  final int perPage;

  AgentDisplayLedgerTable({
    @required this.dataList,
    @required this.sumColumn,
    @required this.availableHeight,
    @required this.page,
    @required this.perPage,
  });

  final List<String> _headerRowTexts = [
    localeStr.agentLedgerHeaderNo,
    localeStr.agentLedgerHeaderAccount,
    localeStr.agentLedgerHeaderDeposit,
    localeStr.agentLedgerHeaderWithdraw,
    localeStr.agentLedgerHeaderPromo,
    localeStr.agentLedgerHeaderRefund,
    localeStr.agentLedgerHeaderRegDate,
    localeStr.agentLedgerHeaderLastLogin,
  ];

  @override
  Widget build(BuildContext context) {
    int availableRows =
        (availableHeight / (FontSize.NORMAL.value * 2.35)).floor();
    debugPrint('max height: $availableHeight, available rows: $availableRows');
    // FontSize.NORMAL.value * 2 = font size * 2 line + space
    double tableHeight = FontSize.NORMAL.value * 2.15 * availableRows;
    double availableWidth = Global.device.width - 36;
    double remainWidth = availableWidth - (90 * 2);
    Map<int, TableColumnWidth> _tableWidthMap = {
      //指定索引及固定列宽
      0: FixedColumnWidth(remainWidth * 0.1),
      1: FixedColumnWidth(remainWidth * 0.25),
      2: FixedColumnWidth(remainWidth * 0.1625),
      3: FixedColumnWidth(remainWidth * 0.1625),
      4: FixedColumnWidth(remainWidth * 0.1625),
      5: FixedColumnWidth(remainWidth * 0.1625),
      6: FixedColumnWidth(90.0),
      7: FixedColumnWidth(90.0),
    };

    return Container(
      constraints: BoxConstraints(
        maxWidth: availableWidth,
        maxHeight: tableHeight,
      ),
      child: SingleChildScrollView(
        child: ColoredBox(
          color: themeColor.chartBgColor,
          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: _tableWidthMap,
            border: TableBorder.all(
              color: themeColor.chartBorderColor,
              width: 2.0,
              style: BorderStyle.solid,
            ),
            /* create table header and generate rows */
            children: _buildContent(),
          ),
        ),
      ),
    );
  }

  List<TableRow> _buildContent() {
    List<TableRow> rows = _buildContentRows();
    rows.insert(0, _buildHeaderRow());
    // rows.add(_buildTotalRow());
    return rows;
  }

  List<TableRow> _buildContentRows() {
    return List.generate(dataList.length, (index) {
      AgentLedgerData data = dataList[index];
      List<dynamic> dataTexts = [
        ((page - 1) * 10) + (index + 1),
        data.account,
        formatNum(data.deposit),
        formatNum(data.withdraw),
        formatNum(data.preferential),
        formatNum(data.rolling),
        data.regDate,
        data.lastLogin,
      ];
      /* generate cell text */
      return TableRow(
        children: List.generate(
          dataTexts.length,
          (index) => TableCellTextWidget(text: '${dataTexts[index]}'),
        ),
      );
    });
  }

  TableRow _buildHeaderRow() {
    return TableRow(
      children: List.generate(
        _headerRowTexts.length,
        (index) => TableCellTextWidget(text: _headerRowTexts[index]),
      ),
    );
  }

  // TableRow _buildTotalRow() {
  //   List<String> _totalRowTexts;
  //   if (sumColumn.isEmpty) {
  //     _totalRowTexts = [localeStr.rollbackHeaderTextTotal] +
  //         List.generate(4, (index) => formatValue(0));
  //   } else
  //     _totalRowTexts = [
  //       localeStr.rollbackHeaderTextTotal,
  //       formatValue(sumColumn[0]),
  //       formatValue(sumColumn[1]),
  //       formatValue(sumColumn[2]),
  //       formatValue(sumColumn[3]),
  //     ];
  //   return TableRow(
  //     children: List.generate(
  //       _totalRowTexts.length,
  //       (index) => TableCellTextWidget(
  //         text: _totalRowTexts[index],
  //         shrinkInset: false,
  //       ),
  //     ),
  //   );
  // }
}
