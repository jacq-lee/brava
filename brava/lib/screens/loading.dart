import 'package:flutter/material.dart';


class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 393,
          height: 852,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFFFEBF2)),
          child: Stack(
            children: [
              Positioned(
                left: 141,
                top: 404,
                child: SizedBox(
                  width: 111,
                  child: Text(
                    'Brava',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFEF3A69),
                      fontSize: 40,
                      fontFamily: 'Archivo',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
