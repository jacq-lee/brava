import 'package:flutter/material.dart';

import 'package:brava/django/move_count.dart';
import 'package:brava/style/style.dart';
import 'package:brava/widgets/widgets.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Welcome text.
          const Text("Hello Jacaitellerie!\nHere's your daily summary.", textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Figtree', fontWeight: FontWeight.w700)),
          // Spacing
          SizedBox(height: 36),
          // Button: Start Session / End Session.
          RunSessionWidget(),
          SizedBox(height: 36),
          TlProgressIndicator(),
          SizedBox(height: 48),
          MovementCountRow(),
          SizedBox(height: 24),
          // Button: Complete today's self assessment.
          // PrimaryButton(
          //     text: "Complete Today's Self Assessment",
          //     onPressed: () {},
          // ),
        ],
      ),
    );
  }
}


// CIRCULAR TRAINING LOAD PROGRESS INDICATOR WIDGET ============================
class TlProgressIndicator extends StatefulWidget {
  const TlProgressIndicator({super.key});

  @override
  State<TlProgressIndicator> createState() => _TlProgressIndicatorState();
}


class _TlProgressIndicatorState extends State<TlProgressIndicator> {
  late Future<DailyCount> futureDailyCount;

  @override
  void initState() {
    super.initState();
    futureDailyCount = fetchDailyCount();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DailyCount>(
      future: futureDailyCount,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          int dayCount = (
            snapshot.data!.riseDoubleDay
            + snapshot.data!.riseSingleLeftDay
            + snapshot.data!.riseSingleRightDay
            + snapshot.data!.jumpDoubleDay
            + snapshot.data!.jumpSingleLeftDay
            + snapshot.data!.jumpSingleRightDay
          );
          int maxAvgCount = 3000;  // HARDCODED - REVISIT ----------------------
          double limitProgDay = dayCount / maxAvgCount;
          return Stack(
            alignment: AlignmentDirectional.center, // Center widgets with no specified positions.
            children: [
              Container(
                width: 280,
                height: 280,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: BravaColors.lightestPink,
                  border: Border.all(color: Color(0xFFFCF3F6), width: 2,),
                ),
              ),
              CircularProgressIndicator(
                constraints: BoxConstraints(minWidth: 300, minHeight: 300),
                value: limitProgDay,
                valueColor: AlwaysStoppedAnimation(BravaColors.bravaPink),
                backgroundColor: BravaColors.lightGrey,
                strokeWidth: 8,
                strokeCap: StrokeCap.round,
              ),
              Column(
                children: [
                  Text(
                    "${(limitProgDay*100).toStringAsFixed(0)}%",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text("of Daily Training\nLoad Limit", textAlign: TextAlign.center, style: TextStyle(color: BravaColors.stagePink, fontWeight: FontWeight.w500),),
                ],
              )
            ],
          );
        } else {
          return Stack(
            alignment: AlignmentDirectional.center,
            // Center widgets with no specified positions.
            children: [
              Container(
                width: 280,
                height: 280,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: BravaColors.lightestPink,
                  border: Border.all(color: Color(0xFFFCF3F6), width: 2,),
                ),
              ),
              CircularProgressIndicator(
                constraints: BoxConstraints(minWidth: 300, minHeight: 300),
                value: 0,
                valueColor: AlwaysStoppedAnimation(BravaColors.bravaPink),
                backgroundColor: BravaColors.lightGrey,
                strokeWidth: 8,
                strokeCap: StrokeCap.round,
              ),
              Column(
                children: [
                  Text(
                    "0%",
                    textAlign: TextAlign.center,
                    style: Theme
                        .of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text("of Daily Training\nLoad Limit",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: BravaColors.stagePink,
                        fontWeight: FontWeight.w500),),
                ],
              )
            ],
          );
        }
      },
    );
  }
}


class RunSessionWidget extends StatefulWidget {
  const RunSessionWidget({super.key});

  @override
  State<RunSessionWidget> createState() => _RunSessionWidgetState();
}

class _RunSessionWidgetState extends State<RunSessionWidget> {
  bool running = false;

  void _toggleRecording() {
    setState(() {
      running = !running;
    });
  }

  @override
  Widget build(BuildContext context) {

    // If running, return the first widget (End Session button and text).
    // If not running, return the second widget (Start Session button)
    return Column(
      children: [
        running
        ? SecondaryButton(
          text: "End Session",
          onPressed: _toggleRecording,
        )
        : PrimaryButton(
          text: "Start Session",
          onPressed: _toggleRecording,
        ),
        Text(
          running ? "Movement analysis in progress..." : "",
          style: Theme.of(context).textTheme.labelMedium!.copyWith(color: BravaColors.dirtyDuckGrey, fontWeight: FontWeight.w700,),
        ),
      ],
    );
  }
}


// class TlProgressIndicator extends StatelessWidget {
//   const TlProgressIndicator({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: AlignmentDirectional.center, // Center widgets with no specified positions.
//       children: [
//         Container(
//           width: 280,
//           height: 280,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: BravaColors.lightestPink,
//             border: Border.all(color: Color(0xFFFCF3F6), width: 2,),
//           ),
//         ),
//         CircularProgressIndicator(
//           constraints: BoxConstraints(minWidth: 300, minHeight: 300),
//           value: 0.76,
//           valueColor: AlwaysStoppedAnimation(BravaColors.bravaPink),
//           backgroundColor: BravaColors.lightGrey,
//           strokeWidth: 8,
//           strokeCap: StrokeCap.round,
//         ),
//         Column(
//           children: [
//             Text(
//               "76%",
//               textAlign: TextAlign.center,
//               style: Theme.of(context).textTheme.displayMedium!.copyWith(
//                 fontWeight: FontWeight.w700,
//               ),
//             ),
//             SizedBox(height: 4),
//             Text("of Daily Training\nLoad Limit", textAlign: TextAlign.center, style: TextStyle(color: BravaColors.stagePink, fontWeight: FontWeight.w500),),
//           ],
//         )
//       ],
//     );
//   }
// }


// MOVEMENT COUNT ROW WIDGET ===================================================
class MovementCountRow extends StatelessWidget {
  const MovementCountRow({super.key});

  Widget moveLabelled(Widget counter, String movement, TextStyle style) {
    return Column(
      children: [
        counter,
        Text(movement, style: style,),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final moveLabelStyle = Theme.of(context).textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w700
    );

    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          moveLabelled(ReleveCounter(), 'relevés', moveLabelStyle),
          SizedBox(width: 64),
          moveLabelled(JumpCounter(), 'jumps', moveLabelStyle),
        ]
    );
  }
}

class ReleveCounter extends StatefulWidget {
  const ReleveCounter({super.key});

  @override
  State<ReleveCounter> createState() => _ReleveCounterState();
}

class _ReleveCounterState extends State<ReleveCounter> {
  late Future<DailyCount> futureDailyCount;

  @override
  void initState() {
    super.initState();
    futureDailyCount = fetchDailyCount();
  }

  @override
  Widget build(BuildContext context) {
    final countStyle = Theme.of(context).textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w700
    );
    return FutureBuilder<DailyCount>(
      future: futureDailyCount,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          int dayCount = (
            snapshot.data!.riseDoubleDay
            + snapshot.data!.riseSingleLeftDay
            + snapshot.data!.riseSingleRightDay
          );
          return Text(
            '$dayCount',
            style: countStyle,
          );
        } else {
          return Text('0', style: countStyle,);
        }
      },
    );
  }
}


class JumpCounter extends StatefulWidget {
  const JumpCounter({super.key});

  @override
  State<JumpCounter> createState() => _JumpCounterState();
}

class _JumpCounterState extends State<JumpCounter> {
  late Future<DailyCount> futureDailyCount;

  @override
  void initState() {
    super.initState();
    futureDailyCount = fetchDailyCount();
  }

  @override
  Widget build(BuildContext context) {
    final countStyle = Theme.of(context).textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w700
    );
    return FutureBuilder<DailyCount>(
      future: futureDailyCount,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          int dayCount = (
              snapshot.data!.jumpDoubleDay
                  + snapshot.data!.jumpSingleLeftDay
                  + snapshot.data!.jumpSingleRightDay
          );
          return Text(
            '$dayCount',
            style: countStyle,
          );
        } else {
          return Text('0', style: countStyle,);
        }
      },
    );
  }
}