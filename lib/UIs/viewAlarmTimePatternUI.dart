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
          height:50,
          child: Row(
            children: [
              Expanded(child: commonText16BlackLeft(alarmPatternValue.patternName)),
              IconButton( icon: const Icon(Icons.more_vert),
                onPressed: (){
                commonShowOkNgInfoDialog(context, "削除してもよろしいですか？", ()async{
                  await deleteIsarAlarmPattern(alarmPatternValue.id!);
                  await deleteIsarAlarmByPatternId(alarmPatternValue.id!);
                  Navigator.pop(context);
                  ref.read(viewAlarmTimePatternProvider.notifier).rebuildScreen();
                });
                },)
            ],
          ),
        ),
      ),
      onTap:() async{
        await ref.read(setAlarmTimePatternProvider.notifier).initialize(alarmPatternValue.id!);
        commonNavigatorPushSlideHorizon(context, SetAlarmTimePattern());
        ref.read(viewAlarmTimePatternProvider.notifier).rebuildScreen();
      }
    );
  }
}
