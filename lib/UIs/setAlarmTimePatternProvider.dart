import 'package:asakatsu/daoIsar/alarmPatternDaoIsar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../entityIsar/alarmPatternEntityIsar.dart';

final setAlarmTimePatternProvider = ChangeNotifierProvider(
      (ref) => SetAlarmTimePatternProvider(),
);

class SetAlarmTimePatternProvider extends ChangeNotifier {

  int _patternId=-1;
  String _patternName="";
  bool _monday=false;
  bool _tuesday=false;
  bool _wednesday=false;
  bool _thursday=false;
  bool _friday=false;
  bool _saturday=false;
  bool _sunday=false;

  int get patternId=>_patternId;
  String get patternName=>_patternName;
  bool get monday=>_monday;
  bool get tuesday=>_tuesday;
  bool get wednesday=>_wednesday;
  bool get thursday=>_thursday;
  bool get friday=>_friday;
  bool get saturday=>_saturday;
  bool get sunday=>_sunday;
  setPatternName(String nameValue){
    _patternName=nameValue;
  }

  Future<void> initialize(int patternIdValue)async {
    _patternId=patternIdValue;
    AlarmPattern? alarmPattern=await selectIsarAlarmPattern(_patternId);
    _patternName=alarmPattern!.patternName;
  }

  setRepeats(String key){
    switch(key){
      case "monday":
        _monday=!_monday;
        break;
      case "tuesday":
        _tuesday=!_tuesday;
        break;
      case "wednesday":
        _wednesday=!_wednesday;
        break;
      case "thursday":
        _thursday=!_thursday;
        break;
      case "friday":
        _friday=!_friday;
        break;
      case "saturday":
        _saturday=!_saturday;
        break;
      case "sunday":
        _sunday=!_sunday;
        break;
    }
    updateIsarAlarmPattern(patternName: _patternName, monday: _monday, tuesday: _tuesday, wednesday: _wednesday, thursday: _thursday, friday: _friday, saturday: _saturday, sunday: _sunday, id: _patternId);
    notifyListeners();
  }
  getRepeats(String key){
    switch(key){
      case "monday":
        return _monday;
      case "tuesday":
        return _tuesday;
      case "wednesday":
        return _wednesday;
      case "thursday":
        return _thursday;
      case "friday":
        return _friday;
      case "saturday":
        return _saturday;
      case "sunday":
        return _sunday;
    }
  }
}