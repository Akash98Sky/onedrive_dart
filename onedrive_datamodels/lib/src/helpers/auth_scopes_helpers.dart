import '../constants/enums.dart';

extension FilesExt on Files {
  String get asString => toString().replaceAll('_', '.');
}

extension SitesExt on Sites {
  String get asString => toString().replaceAll('_', '.');
}
