import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 393,
          height: 852,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 39,
                top: 692,
                child: Container(
                  width: 316,
                  height: 44,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFDEEA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1000),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 10,
                    children: [
                      Text(
                        'Complete Today’s Self Assessment',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF390A17),
                          fontSize: 16,
                          fontFamily: 'Figtree',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 39,
                top: 693,
                child: Container(
                  width: 316,
                  height: 44,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFDEEA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1000),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 10,
                    children: [
                      Text(
                        'Complete Today’s Self Assessment',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF390A17),
                          fontSize: 16,
                          fontFamily: 'Figtree',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 22,
                top: 778,
                child: Container(
                  width: 350,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 350,
                          height: 50,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 0.50, color: Color(0xFFE7E7E7)),
                              borderRadius: BorderRadius.circular(34),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 34,
                        top: 13,
                        child: Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 43,
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://placehold.co/20x20"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://placehold.co/24x24"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://placehold.co/24x24"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                width: 22,
                                height: 22,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://placehold.co/22x22"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(width: 20, height: 20, child: Stack()),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 121.50,
                top: 563,
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 11,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: 10,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '54\n',
                                    style: TextStyle(
                                      color: Color(0xFF131214),
                                      fontSize: 32,
                                      fontFamily: 'Figtree',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'relevés',
                                    style: TextStyle(
                                      color: Color(0xFF131214),
                                      fontSize: 16,
                                      fontFamily: 'Figtree',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: 10,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '61\n',
                                    style: TextStyle(
                                      color: Color(0xFF131214),
                                      fontSize: 32,
                                      fontFamily: 'Archivo',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'jumps',
                                    style: TextStyle(
                                      color: Color(0xFF131214),
                                      fontSize: 16,
                                      fontFamily: 'Figtree',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 127,
                top: 140,
                child: Container(
                  width: 140,
                  height: 44,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFDEEA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(31),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 10,
                    children: [
                      Text(
                        'Start Session',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF390A17),
                          fontSize: 16,
                          fontFamily: 'Figtree',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 99,
                top: 67,
                child: SizedBox(
                  width: 204,
                  child: Text(
                    'Hello Stujart!\nHere’s your daily summary',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF131214),
                      fontSize: 16,
                      fontFamily: 'Figtree',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 47,
                top: 228,
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: ShapeDecoration(
                    shape: OvalBorder(
                      side: BorderSide(
                        width: 5,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFF2F1F2),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 58,
                top: 239,
                child: Container(
                  width: 277,
                  height: 277,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFF9FB),
                    shape: OvalBorder(
                      side: BorderSide(width: 2, color: Color(0xFFFCF2F5)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 138,
                top: 324,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '76%\n',
                        style: TextStyle(
                          color: Color(0xFF131214),
                          fontSize: 48,
                          fontFamily: 'Figtree',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: '\nof Daily Training \nLoad Limit',
                        style: TextStyle(
                          color: Color(0xFF131214),
                          fontSize: 16,
                          fontFamily: 'Figtree',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                left: 43,
                top: 336,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: ShapeDecoration(
                    color: Color(0xFFEF3A69),
                    shape: OvalBorder(),
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