import 'package:asakatsu/UIs/addNewAlarmPatternProvider.dart';
import 'package:asakatsu/UIs/setAlarmTimePatternProvider.dart';
import 'package:asakatsu/UIs/setAlarmTimePatternUI.dart';
import 'package:asakatsu/UIs/viewAlarmTimePatternProvider.dart';
import 'package:asakatsu/common/UI/commonPushUI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../common/UI/commonOthersUI.dart';
import '../common/UI/commonTextUI.dart';
import '../common/commonValues.dart';
import '../common/logic/commonLogicAlarm.dart';
import '../daoIsar/alarmDaoIsar.dart';
import '../daoIsar/alarmPatternDaoIsar.dart';
import '../entityIsar/alarmPatternEntityIsar.dart';
import 'addNewAlarmPatternUI.dart';

class ViewAlarmTimePattern extends ConsumerWidget {
  const ViewAlarmTimePattern({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: commonAppTabBar(),
      body: alarmPatternList( context,  ref),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          ref.read(addNewAlarmPatternTimeProvider.notifier).initialize();
          await commonNavigatorPushSlideHorizon(
              context, const AddNewAlarmPatternTime());
          await commonNavigatorPushSlideHorizon(context, SetAlarmTimePattern());
          ref.read(viewAlarmTimePatternProvider.notifier).rebuildScreen();
        },
        tooltip: 'Increment'+ref.watch(viewAlarmTimePatternProvider).dummyVariableForRebuild.toString(),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget alarmPatternList(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: selectIsarAllAlarmPattern(),
      builder:
          (BuildContext context, AsyncSnapshot<List<AlarmPattern>> snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return  const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData&&snapshot.data!.isNotEmpty) {
          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return alarmPatternListUnit(snapshot.data![index],context,ref);
              });
        } else {
          return const SizedBox(height:30,child: Text("No data found"));
        }
      },
    );
  }

  Widget alarmPatternListUnit(AlarmPattern alarmPatternValue,BuildContext context,WidgetRef ref) {
    return GestureDetector(
      child: Card(
        child: SizedBox(
          height:100,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: commonText16BlackLeft(alarmPatternValue.patternName)),
                  IconButton( icon: const Icon(Icons.more_vert),
                    onPressed: (){
                    commonShowOkNgInfoDialog(context, "???????????????????????????????????????", ()async{
                      await deleteIsarAlarmPattern(alarmPatternValue.id!);
                      await deleteIsarAlarmByPatternId(alarmPatternValue.id!);
                      Navigator.pop(context);
                      ref.read(viewAlarmTimePatternProvider.notifier).rebuildScreen();
                    });
                    },)
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    daysOfWeekButtonTopPage("sunday", "S", ref,alarmPatternValue),
                    daysOfWeekButtonTopPage("monday", "M", ref,alarmPatternValue),
                    daysOfWeekButtonTopPage("tuesday", "T", ref,alarmPatternValue),
                    daysOfWeekButtonTopPage("wednesday", "W", ref,alarmPatternValue),
                    daysOfWeekButtonTopPage("thursday", "T", ref,alarmPatternValue),
                    daysOfWeekButtonTopPage("friday", "F", ref,alarmPatternValue),
                    daysOfWeekButtonTopPage("saturday", "S", ref,alarmPatternValue),
                  ]),
            ],
          ),
        ),
      ),
      onTap:() async{
        await ref.read(setAlarmTimePatternProvider.notifier).initialize(alarmPatternValue.id!);
        await commonNavigatorPushSlideHorizon(context, SetAlarmTimePattern());
        ref.read(viewAlarmTimePatternProvider.notifier).rebuildScreen();
      }
    );
  }
}


Widget daysOfWeekButtonTopPage(String dayName, String dayDisplay, WidgetRef ref, AlarmPattern alarmPatternValue) {
  bool repeatOnOff = false;

  switch(dayName){
    case "monday":
      repeatOnOff =  alarmPatternValue!.monday;
      break;
    case "tuesday":
      repeatOnOff =  alarmPatternValue!.tuesday;
      break;
    case "wednesday":
      repeatOnOff =  alarmPatternValue!.wednesday;
      break;
    case "thursday":
      repeatOnOff =  alarmPatternValue!.thursday;
      break;
    case "friday":
      repeatOnOff =  alarmPatternValue!.friday;
      break;
    case "saturday":
      repeatOnOff =  alarmPatternValue!.saturday;
      break;
    case "sunday":
      repeatOnOff =  alarmPatternValue!.sunday;
      break;
  }

  Color bkColor = Colors.black;
  Color stringColor = Colors.black;
  if (repeatOnOff) {
    bkColor = commonColorSecondary;
    stringColor = Colors.white;
  } else {
    bkColor = Colors.white;
    stringColor = Colors.black87;
  }
  return Row(
      children: [
        GestureDetector(
          onTap: () async{
            await updateIsarAlarmPatternDayOfWeek(alarmPattern: alarmPatternValue, dayName:dayName);
            await refleshAlarmNextDateTimeByPatternId(alarmPatternValue.id!);
            ref.read(viewAlarmTimePatternProvider.notifier).rebuildScreen();
          },
          child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: bkColor,
                border: Border.all(color: commonColorSecondary),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    dayDisplay,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: stringColor,
                    ),
                  ))),
        ),
        const SizedBox(width:6)
      ]);
}
