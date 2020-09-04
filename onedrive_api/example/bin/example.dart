import 'package:onedrive_api/onedrive.dart';
import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf/shelf_io.dart' as io;

void main(List<String> arguments) async {
  final auth = OneDriveAuth(AppCredentials(
    clientId: arguments[0],
    clientSecret: arguments[1],
    scope: Scope(
      files: [Files.ReadWrite_All, Files.ReadWrite_AppFolder],
      sites: [Sites.ReadWrite_All],
    ),
    redirectUri: 'http://localhost:5000',
  ));
  bool auth_done = false;

  print(auth.getAuthorizationUrl());

  var handler = const shelf.Pipeline().addHandler((shelf.Request request) {
    if (!auth_done) {
      // print(request.url.queryParameters['code']);
      auth.redeemCode(request.url.queryParameters['code']).then((value) {
        auth_done = true;
        afterAuth(OneDriveAPI(value));
      });
    }

    return shelf.Response.ok('Request for "${request.url}"');
  });

  await io.serve(handler, 'localhost', 5000).then((server) {
    print('Serving at http://${server.address.host}:${server.port}');
  });
}

void afterAuth(OneDriveAPI api) async {
  print(api.accessCredentials.toJson().toString() + '\n');
  print((await api.getDrive().catchError(
            (onError) => print((onError.response)),
          ))
      .toJson());
}
