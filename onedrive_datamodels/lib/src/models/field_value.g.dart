// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FieldValueSet _$FieldValueSetFromJson(Map<String, dynamic> json) {
  return FieldValueSet(
    author: json['author'] as String,
    authorLookupId: json['authorLookupId'] as String,
    name: json['name'] as String,
    color: json['color'] as String,
    quantity: json['quantity'] as int,
  );
}

Map<String, dynamic> _$FieldValueSetToJson(FieldValueSet instance) =>
    <String, dynamic>{
      'author': instance.author,
      'authorLookupId': instance.authorLookupId,
      'name': instance.name,
      'color': instance.color,
      'quantity': instance.quantity,
    };
