import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimeLineApp extends StatefulWidget {
  const TimeLineApp({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isVez,
    required this.isF,
  });
  final bool isFirst;
  final bool isLast;
  final bool isVez;
  final bool isF;

  @override
  State<TimeLineApp> createState() => _TimeLineAppState();
}

class _TimeLineAppState extends State<TimeLineApp> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: TimelineTile(
        isFirst: widget.isFirst,
        isLast: widget.isLast,
        axis: TimelineAxis.horizontal,
        beforeLineStyle: LineStyle(
          color: !widget.isF ? Colors.deepPurple : Colors.deepPurple.shade100,
          thickness: 5,
        ),
        indicatorStyle: IndicatorStyle(
            height: 20,
            color: !widget.isF ? Colors.deepPurple : Colors.deepPurple.shade100,
            iconStyle: !widget.isVez
                ? null
                : IconStyle(
                    iconData: Icons.circle, fontSize: 18, color: Colors.white)),
        afterLineStyle: LineStyle(
          color: widget.isVez ? Colors.deepPurple.shade100 : Colors.deepPurple,
        ),
      ),
    );
  }
}
