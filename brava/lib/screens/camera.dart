import 'package:flutter/material.dart';

import 'package:brava/style/style.dart';
import 'package:brava/widgets/widgets.dart';


class Camera extends StandardPage {
  const Camera({super.key});

  @override
  String getPageTitle() {
    return "Camera Connections";
  }

  @override
  Widget getContentWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Video preview box.
        VideoPreviewWidget(),
        SizedBox(height: 48,),
        // Connected cameras.
        ConnectedCameraCard(deviceName: "Use Phone Camera", builtIn: true,),
        SizedBox(height: 8,),
        ConnectedCameraCard(deviceName: "Chantelle's iPhone", builtIn: false,),
        // Fill the space between the connected camera and the bottom buttons.
        Expanded(child: SizedBox(),),
        // Add and disconnect camera buttons.
        Row(
          children: [
            PrimaryButton(text: "Add Camera", onPressed: () {}),
            Expanded(child: SizedBox(),),
            SecondaryButton(text: "Disconnect All", onPressed: () {},),
          ],
        ),
      ],
    );
  }
}


class VideoPreviewWidget extends StatelessWidget {
  const VideoPreviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const cornerRad = 10.0;

    return Container(
      // Border around whole video preview widget.
      decoration: BoxDecoration(
        border: Border.all(color: BravaColors.dirtyDuckGrey, width: 2,),
        borderRadius: BorderRadius.all(Radius.circular(cornerRad)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Video previewer.
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              SizedBox(height: 200),
              Icon(Icons.videocam_off_outlined, color: BravaColors.dirtyDuckGrey,)
            ],
          ),
          // Bottom control bar of video preview.
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
            decoration: BoxDecoration(
              color: BravaColors.lightestPink,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(cornerRad))
            ),
            child: Row(
              children: [
                SizedBox(
                  height: 40,
                  child: FittedBox(
                      fit: BoxFit.fitHeight,
                      child: SwitchWidget()
                  ),
                ),
                SizedBox(width: 4),
                Text("See Preview"),
                Expanded(child: SizedBox()),
                Icon(Icons.fullscreen, color: BravaColors.dirtyDuckGrey),  // Make functional and enable/disable
              ],
            ),
          ),
        ],
      ),
    );
  }
}


enum CameraMenu { rename, properties, disconnect, }

class ConnectedCameraCard extends StatefulWidget {
  const ConnectedCameraCard({super.key, required this.deviceName, required this.builtIn,});

  final bool builtIn;
  final String deviceName;

  @override
  State<ConnectedCameraCard> createState() => _ConnectedCameraCardState();
}

class _ConnectedCameraCardState extends State<ConnectedCameraCard> {
  bool usePhoneCam = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2,),
      decoration: BoxDecoration(
        color: BravaColors.lightestPink,
        borderRadius: BorderRadius.all(Radius.circular(10.0),),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (widget.builtIn)
          // If the card is for a phone's built in camera, add a checkbox for
          // enabling/disabling its use.
            Checkbox(
              checkColor: Colors.white,
              fillColor: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
                if (!states.contains(WidgetState.selected)) {
                  return Colors.transparent;
                }
                return BravaColors.bravaPink;
              }),
              value: usePhoneCam,
              onChanged: (bool? value) {
                setState(() {
                  usePhoneCam = value!;
                });
              }
            )
          else
          // Else add padding, since the checkbox normally creates a visual gap.
            SizedBox(width: 16,),
          Text(
            widget.deviceName,
            style: TextStyle(color: BravaColors.stagePink,),
          ),
          Expanded(child: SizedBox(),),
          PopupMenuButton(
            iconColor: BravaColors.stagePink,
            itemBuilder: (BuildContext context) => <PopupMenuEntry<CameraMenu>>[
              const PopupMenuItem<CameraMenu>(
                value: CameraMenu.rename,
                child: ListTile(
                  leading: Icon(Icons.edit_outlined),
                  title: Text('Rename'),
                ),
              ),
              const PopupMenuItem<CameraMenu>(
                value: CameraMenu.properties,
                child: ListTile(
                  leading: Icon(Icons.description_outlined),
                  title: Text('Properties'),
                ),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem<CameraMenu>(
                value: CameraMenu.disconnect,
                child: ListTile(
                  leading: Icon(Icons.sensors_off),
                  title: Text('Disconnect'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
