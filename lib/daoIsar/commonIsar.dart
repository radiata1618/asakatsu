import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../entityIsar/settingEntityIsar.dart';

Future<Isar?> openIsarInstances() async {

  var isarInstance = Isar.getInstance();
  final dir = await getApplicationSupportDirectory();
  if (isarInstance == null) {
    await Isar.open(
      schemas: [SettingSchema],
      directory: dir.path,
      inspector: true,
    );
    isarInstance = Isar.getInstance();
  } else {
    if (!isarInstance.isOpen) {
      await Isar.open(
        schemas: [SettingSchema],
        directory: dir.path,
        inspector: true,
      );
    }
  }
  return isarInstance;
}