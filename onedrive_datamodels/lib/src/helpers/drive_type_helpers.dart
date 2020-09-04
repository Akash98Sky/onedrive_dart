import '../constants/enums.dart';

String driveTypeToJson(DriveType type) => type?.toString()?.split('.')?.last;

DriveType driveTypeFromJson(String type) {
  switch (type?.toLowerCase()) {
    case 'personal':
      return DriveType.personal;
    case 'business':
      return DriveType.business;
    case 'documentlibrary':
      return DriveType.documentLibrary;
    default:
      return null;
  }
}
