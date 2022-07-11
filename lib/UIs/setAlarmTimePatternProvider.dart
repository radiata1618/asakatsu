import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final viewAlarmTimePatternProvider = ChangeNotifierProvider(
      (ref) => ViewAlarmTimePatternProvider(),
);

class ViewAlarmTimePatternProvider extends ChangeNotifier {
  // String _description = "";
  // String _roomName = "";
  // DateTime? _endDateTime;
  //
  // String get description => _description;
  // String get roomName => _roomName;
  // DateTime? get endDateTime => _endDateTime;

  void initialize() {
  }
}