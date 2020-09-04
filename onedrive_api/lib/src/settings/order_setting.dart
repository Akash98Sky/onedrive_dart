import 'package:onedrive_api/src/constants/enums.dart';
import 'package:onedrive_api/src/helpers/enum_helper.dart';

class OrderSetting {
  final SortBy sortBy;
  final SortOrder sortOrder;

  const OrderSetting({this.sortBy, this.sortOrder = SortOrder.asc});

  Map<String, dynamic> toJson() => sortBy == null
      ? {}
      : {'orderby': '${enumToString(sortBy)} ${enumToString(sortOrder)}'};
}
