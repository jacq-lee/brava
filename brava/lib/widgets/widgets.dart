import 'package:flutter/material.dart';
import 'package:brava/style/style.dart';


class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, this.btnText=""});

  final String btnText;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: lightPink,
        foregroundColor: stagePink,
      ),
      onPressed: () {},
      child: Text(btnText),
    );
  }
}


// // FLUTTER DEMO CODE
// import 'package:flutter/material.dart';
//
// /// Flutter code sample for [FilledButton].
//
// void main() {
//   runApp(const FilledButtonApp());
// }
//
// class FilledButtonApp extends StatelessWidget {
//   const FilledButtonApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
//       home: Scaffold(
//         appBar: AppBar(title: const Text('FilledButton Sample')),
//         body: Center(
//           child: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               Column(
//                 children: <Widget>[
//                   const SizedBox(height: 30),
//                   const Text('Filled'),
//                   const SizedBox(height: 15),
//                   FilledButton(onPressed: () {}, child: const Text('Enabled')),
//                   const SizedBox(height: 30),
//                   const FilledButton(onPressed: null, child: Text('Disabled')),
//                 ],
//               ),
//               const SizedBox(width: 30),
//               Column(
//                 children: <Widget>[
//                   const SizedBox(height: 30),
//                   const Text('Filled tonal'),
//                   const SizedBox(height: 15),
//                   FilledButton.tonal(onPressed: () {}, child: const Text('Enabled')),
//                   const SizedBox(height: 30),
//                   const FilledButton.tonal(onPressed: null, child: Text('Disabled')),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }