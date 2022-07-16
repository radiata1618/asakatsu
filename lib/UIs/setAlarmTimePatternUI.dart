import 'package:asakatsu/UIs/setAlarmTimePatternProvider.dart';
import 'package:asakatsu/UIs/setAlarmTimeProvider.dart';
import 'package:asakatsu/UIs/setAlarmTimeUI.dart';
import 'package:asakatsu/common/UI/commonButtonUI.dart';
import 'package:asakatsu/common/UI/commonPushUI.dart';
import 'package:asakatsu/common/UI/commonTextUI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../common/UI/commonOthersUI.dart';
import '../common/UI/commonTextFormUI.dart';
import '../common/commonValues.dart';
import '../common/logic/commonLogicOthers.dart';
import '../daoIsar/alarmDaoIsar.dart';
import '../entityIsar/alarmEntityIsar.dart';

class SetAlarmTimePattern extends ConsumerWidget {
  SetAlarmTimePattern({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: commonAppTabBar(),
      body: alarmList( context,  ref),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await ref.read(setAlarmTimeProvider.notifier).initialize(1, ref.watch(setAlarmTimePatternProvider).patternId, null);
          await commonNavigatorPushSlideHorizon(context, const SetAlarmTime());
          ref.read(setAlarmTimeProvider.notifier).rebuildScreen();
        },
        tooltip: 'Increment'+ref.watch(setAlarmTimePatternProvider).dummyVariableForRebuild.toString(),
        child: const Icon(Icons.add),
      ),
    );
    // return commonScaffoldScroll(
    //   context,
    //   ref,
    //   MainAxisAlignment.spaceBetween,
    //   [
    //     Column(
    //       children: [
    //         commonText16BlackLeft("Edit alarm pattern"),
    //         commonTextBoxBordered(
    //           initialValue: ref.watch(setAlarmTimePatternProvider).patternName,
    //             text: 'Pattern name',
    //             onChanged: (String value) async {
    //               ref
    //                   .read(setAlarmTimePatternProvider.notifier)
    //                   .setPatternName(value);
    //             }),
    //         commonButtonSecondaryColorRound(text: "Save", onPressed: () {})
    //       ],
    //     )
    //   ],
    // );
  }
  Widget alarmList(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: selectIsarAlarmByPatternId(ref.watch(setAlarmTimePatternProvider).patternId),
      builder:
          (BuildContext context, AsyncSnapshot<List<Alarm>> snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return  const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData&&snapshot.data!.isNotEmpty) {
          return Column(
            children: [
              commonText16BlackLeft("Edit alarm pattern"),
              commonTextBoxBordered(
                  initialValue: ref.watch(setAlarmTimePatternProvider).patternName,
                  text: 'Pattern name',
                  onChanged: (String value) async {
                    ref
                        .read(setAlarmTimePatternProvider.notifier)
                        .setPatternName(value);
                  }),
              commonVerticalGap(),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    daysOfWeekButton("sunday", "S", ref),
                    daysOfWeekButton("monday", "M", ref),
                    daysOfWeekButton("tuesday", "T", ref),
                    daysOfWeekButton("wednesday", "W", ref),
                    daysOfWeekButton("thursday", "T", ref),
                    daysOfWeekButton("friday", "F", ref),
                    daysOfWeekButton("saturday", "S", ref),
                  ]),
              Expanded(
                child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return alarmListUnit(snapshot.data![index],context,ref);
                    }),
              ),
            commonButtonSecondaryColorRound(text: "Save", onPressed: () {})
            ],
          );
        } else {
          return Column(
            children: [
              commonText16BlackLeft("Edit alarm pattern"),
              commonTextBoxBordered(
                  initialValue: ref.watch(setAlarmTimePatternProvider).patternName,
                  text: 'Pattern name',
                  onChanged: (String value) async {
                    ref
                        .read(setAlarmTimePatternProvider.notifier)
                        .setPatternName(value);
                  }),
              commonVerticalGap(),
              const SizedBox(height:30,child: Text("Add alarm time")),
            ],
          );
        }
      },
    );
  }
  Widget alarmListUnit(Alarm alarmValue,BuildContext context,WidgetRef ref) {
    return GestureDetector(
        child: Card(
          child: SizedBox(
              height:50,
              child: Row(
                children: [
                  Expanded(child: commonText16BlackLeft("${zeroAddTo2Digit(alarmValue.time.hour.toString())}:${zeroAddTo2Digit(alarmValue.time.minute.toString())}")),
                  IconButton( icon: const Icon(Icons.more_vert),
                    onPressed: (){
                      commonShowOkNgInfoDialog(context, "削除してもよろしいですか？", ()async{
                        await deleteIsarAlarmById(alarmValue.id!);
                        Navigator.pop(context);
                        ref.read(setAlarmTimePatternProvider.notifier).rebuildScreen();
                      });
                    },)

                ],
              )),
        ),
        onTap:() async{
          await ref.read(setAlarmTimeProvider.notifier).initialize(2,ref.watch(setAlarmTimePatternProvider).patternId,alarmValue.id);
          commonNavigatorPushSlideHorizon(context, const SetAlarmTime());
          ref.read(setAlarmTimePatternProvider.notifier).rebuildScreen();
        }
    );
  }
}

Widget daysOfWeekButton(String dayName, String dayDisplay, WidgetRef ref) {
  bool repeatOnOff = ref.watch(setAlarmTimePatternProvider).getRepeats(dayName);
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
    // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            ref
                .read(setAlarmTimePatternProvider.notifier)
                .setRepeats(dayName);
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