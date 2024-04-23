import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimeLineApp extends StatefulWidget {
  const TimeLineApp({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.willPast,
    required this.recentlyPast,
  });
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final bool willPast;
  final bool recentlyPast;

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
          thickness: 5,
          color: widget.isPast
              ? Colors.deepPurple
              : widget.willPast
                  ? Colors.deepPurple
                  : widget.recentlyPast
                      ? Colors.deepPurple
                      : Colors.deepPurple.shade100,
        ),
        indicatorStyle: IndicatorStyle(
          height: 20,
          color: widget.isPast
              ? Colors.deepPurple
              : widget.willPast
                  ? Colors.deepPurple
                  : widget.recentlyPast
                      ? Colors.deepPurple
                      : Colors.deepPurple.shade100,
          iconStyle: widget.willPast
              ? IconStyle(
                  iconData: Icons.circle, fontSize: 18, color: Colors.white)
              : null,
        ),
        afterLineStyle: LineStyle(
          color: widget.willPast
              ? Colors.deepPurple.shade100
              : widget.recentlyPast
                  ? Colors.deepPurple.shade100
                  : Colors.deepPurple,
        ),
      ),
    );
  }
}
