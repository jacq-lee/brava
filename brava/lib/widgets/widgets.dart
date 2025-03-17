import 'package:flutter/material.dart';
import 'package:brava/style/style.dart';


class StandardPage extends StatelessWidget {
  const StandardPage({super.key});

  String getPageTitle() {
    throw UnimplementedError();
  }

  Widget getContentWidget() {
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: edgePadTop,),
          PageHeader(pageTitle: getPageTitle(),),
          SizedBox(height: 16,),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 32,),
              child: getContentWidget(),
            )
          ),
        ],
      ),
    );
  }
}


class PageHeader extends StatelessWidget {
  const PageHeader({super.key, this.pageTitle=""});

  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: edgePadH, right: edgePadH, bottom: 8,),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: BravaColors.lightestPink, width: 2,),),
      ),
      child: Row(
        children: [
          Text(
              pageTitle,
              style: TextStyle(color: BravaColors.marleyBlack, fontWeight: FontWeight.w700),
          ),
          Expanded(child: SizedBox(),),
        ],
      ),
    );
  }
}


class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, this.btnText=""});

  final String btnText;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: BravaColors.lightPink,
        foregroundColor: BravaColors.stagePink,
      ),
      onPressed: () {},
      child: Text(btnText),
    );
  }
}


class SecondaryButton extends StatelessWidget {
  const SecondaryButton({super.key, this.btnText=""});

  final String btnText;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: BravaColors.lightestPink,
        foregroundColor: BravaColors.stagePink,
        side: BorderSide(color: BravaColors.lightPink,),
      ),
      onPressed: () {},
      child: Text(btnText,),
    );
  }
}


class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool light = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeTrackColor: BravaColors.bravaPink,  // Background colour (active).
      activeColor: Colors.white,  // Small, inner circle.
      inactiveTrackColor: BravaColors.dirtyDuckGrey.withAlpha(50),  // Background colour (inactive).
      inactiveThumbColor: Colors.grey.shade500,  // Small, inner circle.
      trackOutlineColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {  // Border colour (inactive).
        if (states.contains(WidgetState.selected)) {
          return Colors.transparent;
        }
        return Colors.grey.shade500; // Use the default color.
      }),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}