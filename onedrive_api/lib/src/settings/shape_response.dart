import 'package:onedrive_api/src/settings/order_setting.dart';

class ShapeResponse {
  /// You can use the select parameter to provide a list of properties to
  /// return on Items.
  final List<String> select;

  /// You can use the expand parameter to instruct the OneDrive API to expand
  /// a children collection and include those results.
  final bool expand;

  /// You can use the order parameter to control the sort order of the items
  /// returned from the OneDrive API.
  final OrderSetting order;

  /// The number of items to return in a result set. The OneDrive API may have
  /// a hard limit that prevents you from asking for more items per response.
  final int top;

  const ShapeResponse({
    this.select,
    this.expand = false,
    this.order = const OrderSetting(),
    this.top,
  });

  Map<String, dynamic> toJson({bool withExpand = true}) {
    final json = order.toJson();

    if (expand && withExpand) {
      json.addAll({
        'expand':
            'children' + (select != null ? '(select=${select.join(',')})' : '')
      });
    } else if (select != null) {
      json.addAll({'select': select.join(',')});
    }

    if (top != null) json.addAll({'top': top.toString()});

    return json;
  }
}
