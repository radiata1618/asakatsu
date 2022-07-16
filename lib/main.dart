import 'dart:isolate';

import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:asakatsu/UIs/addNewAlarmPatternProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'UIs/rootUI.dart';
import 'daoIsar/alarmDaoIsar.dart';
import 'entityIsar/alarmEntityIsar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //向き指定
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  await AndroidAlarmManager.initialize();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );

  const int callAlarmId = 0;
  await AndroidAlarmManager.periodic(
      const Duration(minutes: 1), callAlarmId, callAlarm);
}

Future<void> callAlarm() async {
  Alarm? alarm =await selectIsarAlarmMostRecent();
  if(alarm!=null){
    if(alarm.nextDateTime!=null){
      if(alarm.nextDateTime!.isBefore(DateTime.now())){
        print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
      }
    }
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Asakatsu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Root(),
    );
  }
}
