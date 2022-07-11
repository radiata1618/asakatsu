import 'package:isar/isar.dart';
import '../entityIsar/AlarmEntityIsar.dart';

Future<Alarm?> selectIsarAlarm() async {

  var isarInstance = Isar.getInstance();
  Alarm? resultAlarm;
  await isarInstance?.writeTxn((isar) async {
    List<Alarm> resultList = await isar.alarms.filter().idGreaterThan(-1).findAll();

    if(resultList.isEmpty){
      resultAlarm = null;
    }else{
      resultAlarm = resultList[0];
    }
  });
  return resultAlarm;
}

Future<int> insertIsarAlarm({
  required DateTime time,
  required bool valid,
}) async {

  Alarm insertAlarm= Alarm(
    null,
    time,
    valid,
  );

  var isarInstance = Isar.getInstance();
  int returnResult=0;

  await isarInstance?.writeTxn((isar) async {
    returnResult=  await isar.alarms.put(insertAlarm);
  });

  return returnResult;

}


Future<int> updateIsarAlarm({
  required int id,
  required DateTime time,
  required bool valid,
}) async {

  Alarm updateAlarm= Alarm(
    id,
    time,
    valid,
  );

  var isarInstance = Isar.getInstance();
  int returnResult=0;

  await isarInstance?.writeTxn((isar) async {
    returnResult=  await isar.alarms.put(updateAlarm);
  });

  return returnResult;

}

Future<int> deleteIsarAlarm() async {

  int returnInt=0;
  var isarInstance = Isar.getInstance();
  await isarInstance?.writeTxn((isar) async {
    returnInt = await isar.alarms.filter().idGreaterThan(-1).deleteAll();
  });

  return returnInt;

}