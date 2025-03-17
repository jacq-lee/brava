import 'package:flutter/material.dart';

import 'package:brava/style/style.dart';
import 'package:brava/widgets/widgets.dart';


class Stats extends StandardPage {
  const Stats({super.key});

  @override
  String getPageTitle() {
    return "Training Load History";
  }

  @override
  Widget getContentWidget() {
    return Column(
      children: [
        ToggleButtonsTimeScale(),
        SizedBox(height: 8,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: dirtyDuckGrey.withAlpha(80), width: 2,),
            borderRadius: BorderRadius.all(Radius.circular(10),),
          ),
          child: SizedBox(width: 400, height: 300,),
          // child: ListView(
          //   padding: EdgeInsets.all(8),
          //   children: <Widget>[
          //
          //   ],
          // ),
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
              color: stagePink, fontWeight: FontWeight.w700
          ),
        ),
    ];

    return Container(
      height: height,
      decoration: BoxDecoration(
        color: lightestPink,
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
        color: stagePink,
        selectedColor: stagePink,
        fillColor: lightPink,
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


// class MovementProgressBarsCard extends StatelessWidget {
//   const MovementProgressBarsCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: InkWell(
//         splashColor: Colors.blue.withAlpha(30),
//         onTap: () {
//           debugPrint('Card tapped.');
//         },
//         child: const SizedBox(width: 300, height: 100, child: Text('A card that can be tapped')),
//       ),
//     );
//   }
// }



// FUNCTIONAL, GPT -------------------------------------------------------------
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
//         color: lightestPink,
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
//                 color: isSelected ? lightPink : Colors.transparent,
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               child: Text(
//                 labels[index],
//                 style: Theme.of(context).textTheme.labelLarge!.copyWith(
//                   color: stagePink,
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

