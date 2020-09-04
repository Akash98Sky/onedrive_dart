import 'package:json_annotation/json_annotation.dart';

part 'field_value.g.dart';

///
/// The `FieldValueSet` resource represents the column values in a
/// listItem resource.
///
/// Each user-visible field in the listItem is returned as a name-value pair
/// in the fieldValueSet. The example above is for a list that contains
/// four columns, Author, Name, Color, and Quantity.
///
@JsonSerializable()
class FieldValueSet {
  final String author;
  final String authorLookupId;
  final String name;
  final String color;
  final int quantity;

  FieldValueSet({
    this.author,
    this.authorLookupId,
    this.name,
    this.color,
    this.quantity,
  });

  Map<String, dynamic> toJson() => _$FieldValueSetToJson(this);

  factory FieldValueSet.fromJson(Map<String, dynamic> json) =>
      _$FieldValueSetFromJson(json);

  @override
  String toString() => toJson().toString();
}
