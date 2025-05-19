import 'package:flutter/material.dart';

class IndexNumber extends StatefulWidget {
  const IndexNumber({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  State<StatefulWidget> createState() {
    return _IndexNumberState();
  }
}

class _IndexNumberState extends State<IndexNumber> {
  var coloring = Color.fromARGB(255, 147, 0, 0);

  @override
  void initState() {
    super.initState();
    rightAnswer();
  }

  void rightAnswer() {
    if (widget.summaryData[0]['question_answer'] ==
        widget.summaryData[0]['user_answer']) {
      setState(() {
        coloring = Color.fromARGB(255, 0, 147, 32);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: coloring,
      ),
      child: Center(
        child: Text(
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ((widget.summaryData[0]['question_index'] as int) + 1).toString(),
        ),
      ),
    );
  }
}
