import 'package:flutter/material.dart';
import 'package:spannable_grid/spannable_grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SpannableGrid(
        columns: 2,
        rows: 5,
        cells: _getCells(),
      ),
    );
  }

  List<SpannableGridCellData> _getCells() {
    var result = <SpannableGridCellData>[];

    result.add(
      SpannableGridCellData(
          id: "Task 1",
          column: 1,
          row: 1,
          child: Container(
            padding: const EdgeInsets.all(3.0),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.blueAccent)),
            child: const Text("Task 1"),
          )),
    );
    result.add(
      SpannableGridCellData(
          id: "Task 2",
          column: 2,
          row: 1,
          child: Container(
            padding: const EdgeInsets.all(3.0),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.blueAccent)),
            child: const Text("Task 2"),
          )),
    );
    result.add(
      SpannableGridCellData(
          id: "Task 3",
          column: 1,
          row: 2,
          child: Container(
            padding: const EdgeInsets.all(3.0),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.blueAccent)),
            child: const Text("Task 3"),
          )),
    );
    result.add(
      SpannableGridCellData(
          id: "Task 4",
          column: 2,
          row: 2,
          child: Container(
            padding: const EdgeInsets.all(3.0),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.blueAccent)),
            child: const Text("Task 4"),
          )),
    );
    result.add(
      SpannableGridCellData(
          id: "Task 5",
          column: 1,
          row: 3,
          columnSpan: 2,
          child: Container(
            padding: const EdgeInsets.all(3.0),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.blueAccent)),
            child: const Text("Task 5"),
          )),
    );

    return result;
  }
}
