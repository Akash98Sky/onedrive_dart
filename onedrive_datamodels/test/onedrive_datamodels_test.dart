import 'package:onedrive_datamodels/datamodels.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    Scope scope;

    setUp(() {
      scope = Scope(
        files: [Files.ReadWrite_All],
        sites: [Sites.FullControl_All],
        offlineAccess: false,
      );
    });

    test('Scope Json Test', () {
      expect(
        Scope.toJson(scope),
        'Files.ReadWrite.All Sites.FullControl.All',
      );
    });

    test(
      'nodels comparison test 1',
      () => expect(
        Drive(id: 'asd') == DriveItem(id: 'asd'),
        false,
      ),
    );

    test(
      'nodels comparison test 2',
      () => expect(
        DriveItem(id: 'asd') == DriveItem(id: 'asd'),
        true,
      ),
    );
  });
}
