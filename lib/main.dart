import 'package:flutter/material.dart';
import 'package:master_plan/provider/plan_provider.dart';
import 'package:master_plan/views/plan_creator_screen.dart';
import 'models/plan.dart';

void main() => runApp(MasterPlanApp());

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanProvider(
      notifier: ValueNotifier<List<Plan>>(const []),  // Corrected list notifier
      child: MaterialApp(
        title: 'State management app',  // Corrected quote
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const PlanCreatorScreen(),  // Home points to PlanScreen
      ),
    );
  }
}
