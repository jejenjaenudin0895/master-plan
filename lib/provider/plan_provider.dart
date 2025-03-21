import 'package:flutter/cupertino.dart';

import '../models/plan.dart';

class PlanProvider extends
InheritedNotifier<ValueNotifier<List<Plan>>> {
  const PlanProvider({super.key, required super.child, required
  ValueNotifier<List<Plan>> super.notifier});

  static ValueNotifier<List<Plan>> of(BuildContext context) {
    return context.
    dependOnInheritedWidgetOfExactType<PlanProvider>()!.notifier!;
  }
}
