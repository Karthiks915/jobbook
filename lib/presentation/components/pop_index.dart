import 'package:auto_route/auto_route.dart';

void popToIndex(StackRouter router, int index) async {
  final toPopCount = router.stack.length - index - 1;

  for (int i = 0; i < toPopCount; i++) {
    await router.pop();
  }
}
