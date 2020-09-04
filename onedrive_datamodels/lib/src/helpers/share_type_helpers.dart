import '../constants/enums.dart';

String shareTypeToJson(ShareType type) => type?.toString()?.split('.')?.last;

ShareType shareTypeFromJson(String type) {
  switch (type?.toLowerCase()) {
    case 'view':
      return ShareType.view;
    case 'edit':
      return ShareType.edit;
    case 'embed':
      return ShareType.embed;
    default:
      return null;
  }
}
