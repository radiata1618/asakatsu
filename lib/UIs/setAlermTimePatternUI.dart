
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../common/UI/commonOthersUI.dart';

class SetAlermTimePattern extends ConsumerWidget {
  const SetAlermTimePattern({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return commonScaffoldScroll(context, ref, MainAxisAlignment.spaceBetween, [
      Column(
        children: [
        ],
      )
    ]);
  }
}
