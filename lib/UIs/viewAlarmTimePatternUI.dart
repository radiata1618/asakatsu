import 'package:asakatsu/UIs/setAlarmTimePatternUI.dart';
import 'package:asakatsu/UIs/setAlarmTimeUI.dart';
import 'package:asakatsu/common/UI/commonPushUI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../common/UI/commonOthersUI.dart';

class ViewAlarmTimePattern extends ConsumerWidget {
  const ViewAlarmTimePattern({
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

          ],
        )
      ],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          commonNavigatorPushSlideHorizon(context, SetAlarmTimePattern(mode: 1));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
