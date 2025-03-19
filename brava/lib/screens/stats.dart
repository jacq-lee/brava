import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

import 'package:brava/style/style.dart';
import 'package:brava/widgets/widgets.dart';


class Stats extends StandardPage {
  const Stats({super.key});

  @override
  String getPageTitle() {
    return "Training Load History";
  }

  @override
  Widget getContentWidget(BuildContext context) {
    return Column(
      children: [
        // Toggle for Daily / Weekly / Monthly / Yearly breakdown.
        ToggleButtonsTimeScale(),
        SizedBox(height: 8,),
        // Box containing the breakdown.
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: BravaColors.dirtyDuckGrey.withAlpha(80), width: 2,),
              borderRadius: BorderRadius.all(Radius.circular(10),),
            ),
            padding: EdgeInsets.all(8),
            child:
            Column(
              children: [
                // Header displaying date.
                Container(
                  decoration: BoxDecoration(
                    color: BravaColors.lightestPink,
                    borderRadius: BorderRadius.all(Radius.circular(10),),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_left_rounded, color: BravaColors.bravaPink, size: 48,),
                      // Current Date Button.
                      Expanded(
                        child: FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor: BravaColors.lightestPink,
                            foregroundColor: BravaColors.stagePink,
                          ),
                          onPressed: () {},
                          child: Text("Mar 20, 2024"),
                        ),
                      ),
                      Icon(Icons.arrow_right_rounded, color: BravaColors.bravaPink, size: 48,),
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                // Toggle between percentage and count.
                Align(alignment: AlignmentDirectional.centerEnd, child: ToggleButtonsUnits(),),
                SizedBox(height: 8,),
                // Scrollable area for the rest of the breakdown.
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.all(0),
                    children: <Widget>[
                      MovementProgressExpandable(movementLabel: "Total",),
                      SizedBox(height: 8,),
                      VisaAExpandable(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

const List<String> timeScales = <String>['Daily', 'Weekly', 'Monthly', 'Yearly'];

class ToggleButtonsTimeScale extends StatefulWidget {
  const ToggleButtonsTimeScale({super.key});

  @override
  State<ToggleButtonsTimeScale> createState() => _ToggleButtonsTimeScaleState();
}

class _ToggleButtonsTimeScaleState extends State<ToggleButtonsTimeScale> {
  final List<bool> _selectedScale = <bool>[true, false, false, false];

  @override
  Widget build(BuildContext context) {
    const height = 40.0;
    final timeScalesStyled = <Widget>[
      for (int i = 0; i < timeScales.length; i++)
        Text(
          timeScales[i],
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
            color: BravaColors.stagePink,
          ),
        ),
    ];

    return Container(
      height: height,
      decoration: BoxDecoration(
        color: BravaColors.lightestPink,
        borderRadius: BorderRadius.all(Radius.circular(height/2,),),
      ),
      child: ToggleButtons(
        direction: Axis.horizontal,
        onPressed: (int index) {
          setState(() {
            // The button that is tapped is set to true, and the others to false.
            for (int i = 0; i < _selectedScale.length; i++) {
              _selectedScale[i] = i == index;
            }
          });
        },
        borderRadius: const BorderRadius.all(Radius.circular(height/2)),
        color: BravaColors.stagePink,
        selectedColor: BravaColors.stagePink,
        fillColor: BravaColors.lightPink,
        borderColor: Colors.transparent,
        selectedBorderColor: Colors.transparent,
        splashColor: Colors.transparent,
        constraints: const BoxConstraints(minHeight: height, minWidth: 80.0),
        isSelected: _selectedScale,
        children: timeScalesStyled,
      ),
    );
  }
}


const List<String> units = <String>['%', 'Count'];

class ToggleButtonsUnits extends StatefulWidget {
  const ToggleButtonsUnits({super.key});

  @override
  State<ToggleButtonsUnits> createState() => _ToggleButtonsUnitsState();
}

class _ToggleButtonsUnitsState extends State<ToggleButtonsUnits> {
  final List<bool> _selectedScale = <bool>[true, false];

  @override
  Widget build(BuildContext context) {
    const height = 30.0;
    final unitsStyled = <Widget>[
      for (int i = 0; i < units.length; i++)
        Text(
          units[i],
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
            color: BravaColors.stagePink,
          ),
        ),
    ];

    return Container(
      height: height,
      decoration: BoxDecoration(
        color: BravaColors.lightestPink,
        borderRadius: BorderRadius.all(Radius.circular(height/2,),),
      ),
      child: ToggleButtons(
        direction: Axis.horizontal,
        onPressed: (int index) {
          setState(() {
            // The button that is tapped is set to true, and the others to false.
            for (int i = 0; i < _selectedScale.length; i++) {
              _selectedScale[i] = i == index;
            }
          });
        },
        borderRadius: const BorderRadius.all(Radius.circular(height/2)),
        color: BravaColors.stagePink,
        selectedColor: BravaColors.stagePink,
        fillColor: BravaColors.lightPink,
        borderColor: Colors.transparent,
        selectedBorderColor: Colors.transparent,
        splashColor: Colors.transparent,
        constraints: const BoxConstraints(minHeight: height, minWidth: 50.0),
        isSelected: _selectedScale,
        children: unitsStyled,
      ),
    );
  }
}


class MovementProgressExpandable extends StatelessWidget {
  const MovementProgressExpandable({super.key, required this.movementLabel});

  final String movementLabel;

  @override
  Widget build(BuildContext context) {
    Widget constantHeader = Column(
      children: [
        Row(
          children: [
            Text(
              movementLabel,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: BravaColors.stagePink, fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(width: 8,),
            // Icon(Icons.info_outline_rounded, color: BravaColors.lightPink,),
            Expanded(child: SizedBox(),),
          ],
        ),
        ProgressBar(label: ""),
      ],
    );

    const double dropArrowHeight = 48;

    return ExpandableNotifier(  // <-- Provides ExpandableController to its children
      child: Container(
        decoration: BoxDecoration(
          color: BravaColors.lightestPink,
          borderRadius: BorderRadius.all(Radius.circular(10,),),
        ),
        padding: EdgeInsets.only(left: 12, right: 12, top: 12,),
        child: Column(  // Maybe delete column if not being used.
          children: [
            Expandable(           // <-- Driven by ExpandableController from ExpandableNotifier
              collapsed: ExpandableButton(  // <-- Expands when tapped on the cover photo
                child: Column(
                  children: [
                    constantHeader,
                    Icon(Icons.arrow_drop_down_rounded, color: BravaColors.lightPink, size: dropArrowHeight),
                  ]
                ),
              ),
              expanded: ExpandableButton(       // <-- Collapses when tapped on
                child: Column(
                  children: [
                    constantHeader,
                    Text("Here are some expanded stats!"),
                    Icon(Icons.arrow_drop_up_rounded, color: BravaColors.lightPink, size: dropArrowHeight),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class ProgressBar extends StatelessWidget {
  const ProgressBar({super.key, this.label=""});

  final String label;
  final double barHeight = 10.0;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = BravaColors.lightPink;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: backgroundColor, width: 2,),
                  borderRadius: BorderRadius.all(Radius.circular(20,),),
                ),
                child: LinearProgressIndicator(
                  value: 0.76,
                  color: backgroundColor,
                  valueColor: AlwaysStoppedAnimation(BravaColors.bravaPink),
                  minHeight: barHeight,
                  borderRadius: BorderRadius.all(Radius.circular(barHeight/2),),
                  trackGap: 2,
                ),
              ),
            ),
            SizedBox(width: 12,),
            Container(
              constraints: BoxConstraints(minWidth: 20,),
              child: Text(
                "76%",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(color: BravaColors.bravaPink, fontWeight: FontWeight.w900,),
              )
            ),
          ],
        ),
        if (label != "")
          Text(
            label,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(color: BravaColors.stagePink, fontWeight: FontWeight.w300,),
          ),
      ],
    );
  }
}


// VISA-A QUESTIONNAIRE EXPANDABLE
class VisaAExpandable extends StatelessWidget {
  const VisaAExpandable({super.key});

  @override
  Widget build(BuildContext context) {
    Widget constantHeader = Column(
      children: [
        Row(
          children: [
            Text(
              "Self Assessment",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: BravaColors.stagePink, fontWeight: FontWeight.w700,
              ),
            ),
            Expanded(child: SizedBox(),),
            Container(
              // width: 50,
              height: 30,
              child: FilledButton(
                style: FilledButton.styleFrom(
                  padding: EdgeInsets.all(0),
                  backgroundColor: BravaColors.lightPink,
                  foregroundColor: BravaColors.stagePink,
                ),
                onPressed: () {},
                child: Text("Edit"),
              ),
            ),
            SizedBox(width: 8,),
            Text(
              "84 / 100",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: BravaColors.stagePink, fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        // Subtitle
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Text(
            "VISA-A Questionnaire",
            style: Theme.of(context).textTheme.labelLarge!.copyWith(color: BravaColors.stagePink, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );

    const double dropArrowHeight = 48;

    return ExpandableNotifier(  // <-- Provides ExpandableController to its children
      child: Container(
        decoration: BoxDecoration(
          color: BravaColors.lightestPink,
          borderRadius: BorderRadius.all(Radius.circular(10,),),
        ),
        padding: EdgeInsets.only(left: 12, right: 12, top: 12,),
        child: Column(  // Maybe delete column if not being used.
          children: [
            Expandable(           // <-- Driven by ExpandableController from ExpandableNotifier
              collapsed: ExpandableButton(  // <-- Expands when tapped on the cover photo
                child: Column(
                    children: [
                      constantHeader,
                      Icon(Icons.arrow_drop_down_rounded, color: BravaColors.lightPink, size: dropArrowHeight),
                    ]
                ),
              ),
              expanded: ExpandableButton(       // <-- Collapses when tapped on
                child: Column(
                  children: [
                    constantHeader,
                    Text("Here are some expanded stats!"),
                    Icon(Icons.arrow_drop_up_rounded, color: BravaColors.lightPink, size: dropArrowHeight),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// CUSTOM TOGGLE WITH ROUNDED INTERNAL BORDERS ---------------------------------
// class _ToggleButtonsTimeScaleState extends State<ToggleButtonsTimeScale> {
//   int selectedIndex = 0; // Default selected index
//
//   final List<String> labels = ["Daily", "Weekly", "Monthly", "Yearly"];
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // padding: const EdgeInsets.all(4),
//       decoration: BoxDecoration(
//         color: BravaColors.lightestPink,
//         borderRadius: BorderRadius.circular(30),
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: List.generate(labels.length, (index) {
//           bool isSelected = index == selectedIndex;
//           return GestureDetector(
//             onTap: () {
//               setState(() {
//                 selectedIndex = index;
//               });
//             },
//             child: Container(
//               padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//               decoration: BoxDecoration(
//                 color: isSelected ? BravaColors.lightPink : Colors.transparent,
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               child: Text(
//                 labels[index],
//                 style: Theme.of(context).textTheme.labelLarge!.copyWith(
//                   color: BravaColors.stagePink,
//                   fontWeight: FontWeight.w700,
//                 )
//               ),
//             ),
//           );
//         }),
//       ),
//     );
//   }
// }

