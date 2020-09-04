import '../constants/enums.dart';

String shareScopeToJson(ShareScope scope) =>
    scope?.toString()?.split('.')?.last;

ShareScope shareScopeFromJson(String scope) {
  switch (scope?.toLowerCase()) {
    case 'anonymous':
      return ShareScope.anonymous;
    case 'organization':
      return ShareScope.organization;
    case 'users':
      return ShareScope.users;
    default:
      return null;
  }
}
