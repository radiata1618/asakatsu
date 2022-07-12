import 'package:asakatsu/UIs/addNewAlarmPatternProvider.dart';
import 'package:asakatsu/UIs/setAlarmTimePatternProvider.dart';
import 'package:asakatsu/UIs/setAlarmTimePatternUI.dart';
import 'package:asakatsu/common/UI/commonButtonUI.dart';
import 'package:asakatsu/daoIsar/alarmPatternDaoIsar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../common/UI/commonOthersUI.dart';
import '../common/UI/commonPushUI.dart';
import '../common/UI/commonTextFormUI.dart';
import '../common/UI/commonTextUI.dart';

class AddNewAlarmPatternTime extends ConsumerWidget {
  const AddNewAlarmPatternTime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return commonScaffoldScroll(
      context,
      ref,
      MainAxisAlignment.spaceBetween,
      [
        Column(
          children: [
            commonText16BlackLeft("Add new alarm pattern"),
            commonTextBoxBordered(text: 'Pattern name',onChanged: (String value)async{
              ref.read(addNewAlarmPatternTimeProvider.notifier).setName(value);
            }),
            commonButtonSecondaryColorRound(text: "Save", onPressed: ()async{
              int patternId = await insertIsarAlarmPattern(patternName: ref.watch(addNewAlarmPatternTimeProvider).patternName, monday: false, tuesday: false, wednesday: false, thursday: false, friday: false, saturday: false, sunday: false);
              await ref.read(setAlarmTimePatternProvider.notifier).initialize(patternId);
              commonNavigatorPushPushSlideHorizonReplacement(context, SetAlarmTimePattern());

            })
          ],
        )
      ],
      //   floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     commonNavigatorPushSlideHorizon(context, SetAlarmTime(mode: 1));
      //   },
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
