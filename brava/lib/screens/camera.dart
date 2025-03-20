import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

import 'package:brava/style/style.dart';
import 'package:brava/widgets/widgets.dart';


class Camera extends StandardPage {
  const Camera({super.key});

  @override
  String getPageTitle() {
    return "Camera Connections";
  }

  @override
  Widget getContentWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Video preview box.
        PreviewVideoWidget(),
        SizedBox(height: 36,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PrimaryButton(text: "Add Camera", onPressed: () {}),
            Expanded(child: SizedBox(),),
            SecondaryButton(text: "Disconnect All", onPressed: () {},),
          ],
        ),
        SizedBox(height: 24,),
        // Connected cameras.
        Container(
          alignment: AlignmentDirectional.centerStart,
          padding: EdgeInsets.only(left: 8,),
          child: Text(
            "Phone Connections",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w600,
            )
          ),
        ),
        SizedBox(height: 8,),
        Expanded(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: [
              ConnectedCameraCard(deviceName: "Phone Camera", builtIn: false,),
              // SizedBox(height: 8,),
              // ConnectedCameraCard(deviceName: "Coco's iPhone", builtIn: false,),
              // SizedBox(height: 8,),
            ],
          ),
        ),
      ],
    );
  }
}

// PREVIEW VIDEO WIDGET --------------------------------------------------------
// Box that allows viewers to toggle a camera preview ON / OFF.
class PreviewVideoWidget extends StatefulWidget {
  const PreviewVideoWidget({super.key});

  @override
  State<PreviewVideoWidget> createState() => _PreviewVideoWidgetState();
}

class _PreviewVideoWidgetState extends State<PreviewVideoWidget> {
  bool previewOn = false;
  final cornerRad = 10.0;

  void togglePreview() {
    setState(() {
      previewOn = !previewOn;
    });
  }

  @override
  Widget build(BuildContext context) {
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
          previewOn
          ? ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(cornerRad*0.8,),),
            child: CameraPreviewWidget(),
          )
          : Stack(
            alignment: AlignmentDirectional.center,
            children: [
              SizedBox(height: 200,),
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
                    // child: PrimaryButton(text: "test", onPressed: togglePreview)
                    child: SwitchWidget(onChanged: togglePreview,),
                  ),
                ),
                SizedBox(width: 4),
                Text("See Preview"),
                Expanded(child: SizedBox()),
                // Icon(Icons.fullscreen, color: BravaColors.dirtyDuckGrey),  // Make functional and enable/disable
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// CONNECTED CAMERA CARD WIDGET ------------------------------------------------
// Widget that displays a camera when it's connected, and allows the user to
// edit or disconnect.
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


// CAMERA PREVIEW WIDGET -------------------------------------------------------
// Widget for viewing a live camera preview.
class CameraPreviewWidget extends StatefulWidget {
  const CameraPreviewWidget({super.key});

  @override
  State<CameraPreviewWidget> createState() => _CameraPreviewWidgetState();
}

class _CameraPreviewWidgetState extends State<CameraPreviewWidget> {
  late CameraController _controller;
  List<CameraDescription> _cameras = [];
  bool _isCameraInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    try {
      _cameras = await availableCameras();
      if (_cameras.isNotEmpty) {
        _controller = CameraController(_cameras[0], ResolutionPreset.max);
        await _controller.initialize();
        if (mounted) {
          setState(() {
            _isCameraInitialized = true;
          });
        }
      } else {
        print("No cameras available.");
      }
    } catch (e) {
      print("Error initializing camera: $e");
    }
  }

  @override
  void dispose() {
    if (_isCameraInitialized) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isCameraInitialized) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return CameraPreview(_controller);
  }
}