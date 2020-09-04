import '../constants/enums.dart';

String publicationLevelToJson(PublicationLevel level) =>
    level?.toString()?.split('.')?.last;

PublicationLevel publicationLevelFromJson(String level) {
  switch (level?.toLowerCase()) {
    case 'published':
      return PublicationLevel.published;
    case 'checkout':
      return PublicationLevel.checkout;
    default:
      return null;
  }
}
