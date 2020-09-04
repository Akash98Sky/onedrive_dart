import '../constants/enums.dart';

String objectTypeToJson(ObjectType type) => type.toString().split('.').last;

ObjectType objectTypeFromJson(String type) {
  switch (type.toLowerCase()) {
    case 'folder':
      return ObjectType.Folder;
    case 'file':
      return ObjectType.File;
    default:
      return null;
  }
}
