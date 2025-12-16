import '/app/exports.dart';

class ListOfDateWiseDataItem {
  final List<DateWiseDataItem> dateWiseDataItemList;

  ListOfDateWiseDataItem({
    required this.dateWiseDataItemList,
  });
}

class DateWiseDataItem {
  final String energyChart;
  final List<Data> dataList;

  DateWiseDataItem({
    required this.energyChart,
    required this.dataList,
  });
}

class Data {
  final Color color;
  final String title;
  final String data;
  final String cost;

  Data({
    required this.color,
    required this.title,
    required this.data,
    required this.cost,
  });
}
