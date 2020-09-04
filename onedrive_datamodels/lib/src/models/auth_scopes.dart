import '../constants/enums.dart';
import '../helpers/auth_scopes_helpers.dart';

/// Scopes determine what type of access the app is granted when the user is signed in.
class Scope {
  /// Files permissions
  final List<Files> files;

  /// Sites permissions
  final List<Sites> sites;

  /// Others permissions
  final List<String> others;

  /// Enables your app to work offline even when the user isn't active. Requires the use of code-flow.
  final bool offlineAccess;

  const Scope({
    this.files = const [Files.ReadWrite],
    this.sites = const [],
    this.others = const [],
    this.offlineAccess = true,
  });

  factory Scope.fromJson(String scope) {
    final allScopes = scope.split(' ');
    final offlineAccess = allScopes.remove('offline_access');
    final files = <Files>[];
    final sites = <Sites>[];
    final others = <String>[];

    allScopes.forEach((s) {
      var perm = _permissionFromString(s);

      if (perm is Files) {
        files.add(perm);
      } else if (perm is Sites) {
        sites.add(perm);
      } else {
        others.add(perm);
      }
    });

    return Scope(files: files, sites: sites, offlineAccess: offlineAccess);
  }

  @override
  String toString() => toJson(this);

  static String toJson(Scope instance) {
    final stringBuffer = StringBuffer();

    var permissions = instance.files
        .map<String>((e) => e.asString)
        .followedBy(instance.sites.map<String>((e) => e.asString))
        .followedBy(instance.others);

    if (instance.offlineAccess) {
      permissions = permissions.followedBy(['offline_access']);
    }

    stringBuffer.writeAll(permissions, ' ');

    return stringBuffer.toString();
  }
}

Object _permissionFromString(String perm) {
  switch (perm.toLowerCase()) {
    case 'files.read':
      return Files.Read;
    case 'files.read.all':
      return Files.Read_All;
    case 'files.read.selected':
      return Files.Read_Selected;
    case 'files.readwrite':
      return Files.ReadWrite;
    case 'files.readwrite.all':
      return Files.ReadWrite_All;
    case 'files.readwrite.appfolder':
      return Files.ReadWrite_AppFolder;
    case 'files.readwrite.selected':
      return Files.ReadWrite_Selected;
    case 'sites.read.all':
      return Sites.Read_All;
    case 'sites.readwrite.all':
      return Sites.ReadWrite_All;
    case 'sites.manage.all':
      return Sites.Manage_All;
    case 'sites.fullcontrol.all':
      return Sites.FullControl_All;
    default:
      return perm;
  }
}
