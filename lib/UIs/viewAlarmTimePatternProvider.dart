import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final viewAlarmTimePatternProvider = ChangeNotifierProvider(
      (ref) => ViewAlarmTimePatternProvider(),
);

class ViewAlarmTimePatternProvider extends ChangeNotifier {
  // int _patternId=-1;
  // String _patternName="";
  // //
  // int get patternId=>_patternId;
  // String get patternName=>_patternName;
  // setPatternName(String nameValue){
  //   _patternName=nameValue;
  // }
  //
  // Future<void> initialize(int patternIdValue)async {
  //   _patternId=patternIdValue;
  //   AlarmPattern? alarmPattern=await selectIsarAlarmPattern(_patternId);
  //   _patternName=alarmPattern!.patternName;
  // }

  void rebuildScreen(){
    notifyListeners();
  }
}