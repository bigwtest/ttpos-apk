// Flutter imports:
import 'package:flutter/material.dart';
import 'package:pos/components/common/table_td_text.dart';
import 'package:ttpos_ui/components/common/empty_data.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class ExpandableTable extends StatefulWidget {
  final List<dynamic> data;

  final List<String> th;
  final bool? border;
  final bool? isLoading;
  final List<DataCell> Function(
    bool hasChildren,
    bool hasChildrenList,
    dynamic dataItem,
    int index,
    Map<int, bool> expandedRows,
    void Function(int index) toggleExpanded,
  ) buildRowCells;

  final List<DataCell> Function(
    bool hasChildren,
    bool hasChildrenList,
    dynamic dataItem,
    int index,
  )? buildExpandedRowCells;

  const ExpandableTable({
    super.key,
    required this.data,
    required this.th,
    required this.buildRowCells,
    this.buildExpandedRowCells,
    this.border = false,
    this.isLoading = false,
  });
  @override
  State<ExpandableTable> createState() => _ExpandableTableState();
}

class _ExpandableTableState extends State<ExpandableTable> {
  final Map<int, bool> _expandedRows = {};
  List<DataColumn> columns = [];

  @override
  void initState() {
    super.initState();
    columns = widget.th.map((e) => DataColumn(label: TableTdText(text: e))).toList();
  }

  @override
  void didUpdateWidget(ExpandableTable oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {
      _expandedRows.clear();
    });
  }

  void _toggleExpanded(int index) {
    setState(() {
      _expandedRows[index] = !(_expandedRows[index] ?? false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: CustomTheme.secondaryColor.shade700,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),
      child: widget.isLoading!
          ? const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            )
          : ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              child: widget.data.isEmpty
                  ? Flex(
                      direction: Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width.scaleWidth,
                            child: DataTable(
                              border: widget.border!
                                  ? TableBorder.all(
                                      width: 1,
                                      color: CustomTheme.secondaryColor.shade700,
                                    )
                                  : null,
                              headingRowHeight: 35.0.scaleHeight,
                              headingTextStyle: TextStyle(
                                color: CustomTheme.secondaryColor,
                                fontSize: 12.0,
                              ),
                              dataRowMinHeight: 54.0.scaleHeight,
                              dataRowMaxHeight: 54.0.scaleHeight,
                              headingRowColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
                                return CustomTheme.greyColor.shade100;
                              }),
                              columns: columns,
                              rows: const [], // 空数据时不需要调用 _buildRows
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(child: EmptyDataView()),
                        ),
                      ],
                    )
                  : SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: MediaQuery.of(context).size.width - 130.0.scaleWidth,
                          ),
                          child: DataTable(
                            columnSpacing: 8.0.scalePadding,
                            horizontalMargin: 16.0.scalePadding,
                            border: widget.border!
                                ? TableBorder.all(
                                    width: 1,
                                    color: CustomTheme.secondaryColor.shade700,
                                  )
                                : null,
                            dividerThickness: 0,
                            headingRowHeight: 35.0.scaleHeight,
                            headingTextStyle: const TextStyle(
                              color: CustomTheme.secondaryColor,
                              fontSize: 12.0,
                            ),
                            dataRowMinHeight: 54.0.scaleHeight,
                            dataRowMaxHeight: 54.0.scaleHeight,
                            headingRowColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
                              return CustomTheme.greyColor.shade100;
                            }),
                            columns: columns,
                            rows: _buildRows(
                              widget.buildRowCells,
                              widget.buildExpandedRowCells,
                            ),
                          ),
                        ),
                      ),
                    ),
            ),
    );
  }

  List<DataRow> _buildRows(buildRowCells, buildExpandedRowCells) {
    List<DataRow> rows = [];

    // Safely check for childrenList property
    bool hasChildrenList = widget.data.any(
      (item) {
        if (item == null) return false;
        try {
          var children = item is Map ? item['childrenList'] : (item.childrenList is List ? item.childrenList : null);
          return children != null && children.isNotEmpty;
        } catch (e) {
          // Property doesn't exist
          return false;
        }
      },
    );

    for (int i = 0; i < widget.data.length; i++) {
      final item = widget.data[i];

      // Safely check if this item has children
      bool hasChildren = false;
      List? childrenList;

      if (item != null) {
        try {
          childrenList = item is Map ? item['childrenList'] : (item.childrenList is List ? item.childrenList : null);
          hasChildren = childrenList != null && childrenList.isNotEmpty;
        } catch (e) {
          // Property doesn't exist
          hasChildren = false;
          childrenList = null;
        }
      }

      //这里控制行
      rows.add(
        DataRow(
          color: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
            // All rows will have the same selected color.
            if (states.contains(WidgetState.selected)) {
              return Colors.white;
            }
            // Even rows will have a grey color.
            if (!i.isEven) {
              return CustomTheme.greyColor.shade100;
            }
            return null; // Use default value for other states and odd rows.
          }),
          cells: buildRowCells(
            hasChildren,
            hasChildrenList,
            item,
            i,
            _expandedRows,
            _toggleExpanded,
          ),
        ),
      );

      //这里是控制展开行的代码
      if (hasChildren && _expandedRows[i] == true && childrenList != null) {
        for (var child in childrenList) {
          rows.add(
            DataRow(
              cells: buildExpandedRowCells!(
                hasChildren,
                hasChildrenList,
                child,
                i,
              ),
            ),
          );
        }
      }
    }
    return rows;
  }
}
