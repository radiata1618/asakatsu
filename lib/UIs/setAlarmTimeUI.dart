import 'package:asakatsu/common/UI/commonButtonUI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../common/UI/commonOthersUI.dart';

class SetAlarmTime extends ConsumerWidget {
  int mode;
   SetAlarmTime({
     Key? key,
    required this.mode,
  }) : super(key: key);
  // mode 1:新規、2:編集

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return commonScaffoldScroll(
      context,
      ref,
      MainAxisAlignment.spaceBetween,
      [
        Column(
          children: [
            commonButtonSecondaryColorRound(text: "Save", onPressed: (){

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
