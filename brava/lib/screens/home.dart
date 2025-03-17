import 'package:brava/style/style.dart';
import 'package:flutter/material.dart';
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
          SizedBox(height: 24),
          // Button: Start Session.
          const PrimaryButton(btnText: "Start Session",),
          SizedBox(height: 48),
          TlProgressIndicator(),
          SizedBox(height: 24),
          MovementCountRow(),
          SizedBox(height: 48),
          // Button: Complete today's self assessment.
          const PrimaryButton(btnText: "Complete Today's Self Assessment")
        ],
      ),
    );
  }
}


// CIRCULAR TRAINING LOAD PROGRESS INDICATOR WIDGET ============================
class TlProgressIndicator extends StatelessWidget {
  const TlProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center, // Center widgets with no specified positions.
      children: [
        Container(
          width: 280,
          height: 280,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: lightestPink,
            border: Border.all(color: Color(0xFFFCF3F6), width: 2,),
          ),
        ),
        CircularProgressIndicator(
          constraints: BoxConstraints(minWidth: 300, minHeight: 300),
          value: 0.76,
          valueColor: AlwaysStoppedAnimation(bravaPink),
          backgroundColor: lightGrey,
          strokeWidth: 8,
          strokeCap: StrokeCap.round,
        ),
        Column(
          children: [
            Text(
              "76%",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 4),
            Text("of Daily Training\nLoad Limit", textAlign: TextAlign.center, style: TextStyle(color: stagePink, fontWeight: FontWeight.w500),),
          ],
        )
      ],
    );
  }
}


// MOVEMENT COUNTER WIDGET =====================================================
class MovementCountRow extends StatelessWidget {
  const MovementCountRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MovementCounter(movement: 'relevé'),
          SizedBox(width: 64),
          MovementCounter(movement: 'jump'),
        ]
    );
  }
}



class MovementCounter extends StatefulWidget {
  const MovementCounter({super.key, required this.movement});

  final String movement;

  @override
  State<MovementCounter> createState() => _MovementCounter();
}

class _MovementCounter extends State<MovementCounter> {
  int _movementCount = 0;

  void _updateCount() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _movementCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _updateReleveCount method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          '$_movementCount',
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          '${widget.movement}s',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
