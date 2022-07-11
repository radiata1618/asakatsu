import 'package:isar/isar.dart';

part 'alarmEntityIsar.g.dart';

//flutter pub run build_runner build
@Collection()
class Alarm {
  Alarm(
      this.id,
      this.time,
      this.valid,
      );

  @Id()
  int? id;
  DateTime time;
  bool valid;
}