import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../daoIsar/alarmDaoIsar.dart';

final setAlarmTimeProvider = ChangeNotifierProvider(
      (ref) => SetAlarmTimeProvider(),
);

class SetAlarmTimeProvider extends ChangeNotifier {
  // String _description = "";
  // String _roomName = "";
  DateTime _alarmTime=DateTime(0,0,0,7,0,0);
  int _mode =0;
  int _alarmId =-1;
  int _alarmPatternId =-1;
  //1:追加、2:編集
  //
  // String get description => _description;
  // String get roomName => _roomName;
  DateTime? get alarmTime => _alarmTime;
  int get mode=>_mode;
  int get alarmId=>_alarmId;
  int get alarmPatternId=>_alarmPatternId;

  void setAlarmTime(DateTime timeValue){
    _alarmTime=timeValue;
  }
  Future<void> initialize(int modeValue,int patternIdValue, int? alarmIdValue) async {
    _mode=modeValue;
    _alarmPatternId =patternIdValue;

    if(_mode==1){
      _alarmId =-1;
      _alarmTime=DateTime(0,0,0,7,0,0);
    }else{
    }
  }

  Future<void> insertOrUpdateAlarmTime()async {
    if(_mode==1){
      await insertIsarAlarm(patternId: _alarmPatternId, time: _alarmTime, valid: true);
    }else{
      await updateIsarAlarm(patternId: _alarmPatternId, time: _alarmTime, valid: true, id: _alarmId);
    }
  }
}