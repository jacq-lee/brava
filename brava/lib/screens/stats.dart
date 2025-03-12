import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
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
                left: 27,
                top: 131,
                child: Container(
                  width: 340,
                  height: 631,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFF3F2F2)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 32,
                top: 632,
                child: Container(
                  width: 330,
                  height: 123,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFF9FB),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
              Positioned(
                left: 250,
                top: 639,
                child: Container(
                  width: 42,
                  height: 20,
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
                        'Edit',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF390A17),
                          fontSize: 10,
                          fontFamily: 'Figtree',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 32,
                top: 136,
                child: Container(
                  width: 330,
                  height: 47,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFF9FB),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
              Positioned(
                left: 32,
                top: 301,
                child: Container(
                  width: 330,
                  height: 141,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFF9FB),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
              Positioned(
                left: 32,
                top: 452,
                child: Container(
                  width: 330,
                  height: 172,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFF9FB),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
              Positioned(
                left: 52,
                top: 680,
                child: Text(
                  '1.',
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 12,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                left: 52,
                top: 740,
                child: Text(
                  '2. ',
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 12,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                left: 72,
                top: 680,
                child: SizedBox(
                  width: 203,
                  child: Text(
                    'For how many minutes do you have stiffness in the Achilles region on first getting up?',
                    style: TextStyle(
                      color: Color(0xFF390A17),
                      fontSize: 12,
                      fontFamily: 'Figtree',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 72,
                top: 740,
                child: Text(
                  'Once you are warmed up for the day,',
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 12,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                left: 32,
                top: 228,
                child: Container(
                  width: 330,
                  height: 64,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFF9FB),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
              Positioned(
                left: 27,
                top: 90,
                child: Container(
                  width: 340,
                  height: 34,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 340,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFF9FB),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(33),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 72.26,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFDEEA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 4.63,
                        top: 0,
                        child: Container(
                          width: 331.66,
                          height: 34,
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 50,
                            children: [
                              Text(
                                'Daily',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF390A17),
                                  fontSize: 12,
                                  fontFamily: 'Figtree',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'Weekly',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF390A17),
                                  fontSize: 12,
                                  fontFamily: 'Figtree',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'Monthly',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF390A17),
                                  fontSize: 12,
                                  fontFamily: 'Figtree',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'Yearly',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF390A17),
                                  fontSize: 12,
                                  fontFamily: 'Figtree',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 271,
                top: 195,
                child: Container(
                  width: 92,
                  height: 23,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFF9FB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(33),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 314,
                top: 195,
                child: Container(
                  width: 49,
                  height: 23,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFDEEA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 280.63,
                top: 200.50,
                child: Text(
                  'Count',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 10,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 336.19,
                top: 200.50,
                child: Text(
                  '%',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 10,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 31,
                top: 49,
                child: Text(
                  'Training Load History',
                  style: TextStyle(
                    color: Color(0xFF131214),
                    fontSize: 16,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                left: 154,
                top: 152,
                child: Text(
                  'Mar 20, 2025',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 14,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                left: 41,
                top: 237,
                child: Text(
                  'Total',
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 12,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                left: 327,
                top: 263,
                child: Text(
                  '76%',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFFFD6D93),
                    fontSize: 12,
                    fontFamily: 'Archivo',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                left: 75,
                top: 238,
                child: Container(
                  width: 12,
                  height: 12,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: ShapeDecoration(
                            shape: OvalBorder(
                              side: BorderSide(width: 1, color: Color(0xFFFFDEEA)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 2,
                        child: SizedBox(
                          width: 6,
                          child: Text(
                            '?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFFFDEEA),
                              fontSize: 8,
                              fontFamily: 'Archivo',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
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
                left: 0,
                top: 76,
                child: Container(
                  width: 393,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFFFF9FB),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 47,
                top: 270,
                child: Container(
                  width: 262,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(width: 262, child: Stack()),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 47,
                top: 338,
                child: Container(
                  width: 262,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(width: 262, child: Stack()),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 47,
                top: 489,
                child: Container(
                  width: 262,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(width: 262, child: Stack()),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 47,
                top: 370,
                child: Container(
                  width: 262,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(width: 262, child: Stack()),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 47,
                top: 553,
                child: Container(
                  width: 262,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(width: 262, child: Stack()),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 47,
                top: 521,
                child: Container(
                  width: 262,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(width: 262, child: Stack()),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 47,
                top: 401,
                child: Container(
                  width: 262,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(width: 262, child: Stack()),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 47,
                top: 584,
                child: Container(
                  width: 262,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(width: 262, child: Stack()),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 327,
                top: 331,
                child: Container(
                  width: 26,
                  height: 13,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Text(
                          '72%',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFFFD6D93),
                            fontSize: 12,
                            fontFamily: 'Archivo',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 327,
                top: 482,
                child: Container(
                  width: 26,
                  height: 13,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Text(
                          '80%',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFFFD6D93),
                            fontSize: 12,
                            fontFamily: 'Archivo',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 328,
                top: 363,
                child: Text(
                  '73%',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFFFD6D93),
                    fontSize: 12,
                    fontFamily: 'Archivo',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                left: 327,
                top: 546,
                child: Text(
                  '62%',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFFFD6D93),
                    fontSize: 12,
                    fontFamily: 'Archivo',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                left: 328,
                top: 514,
                child: Text(
                  '84%',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFFFD6D93),
                    fontSize: 12,
                    fontFamily: 'Archivo',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                left: 328,
                top: 394,
                child: Text(
                  '74%',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFFFD6D93),
                    fontSize: 12,
                    fontFamily: 'Archivo',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                left: 328,
                top: 577,
                child: Text(
                  '78%',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFFFD6D93),
                    fontSize: 12,
                    fontFamily: 'Archivo',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                left: 44,
                top: 309,
                child: Text(
                  'Relevés',
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 12,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                left: 44,
                top: 460,
                child: Text(
                  'Jumps',
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 12,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                left: 44,
                top: 375,
                child: Text(
                  'Right Leg',
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 10,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 44,
                top: 558,
                child: Text(
                  'Single Leg - Right',
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 10,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 44,
                top: 526,
                child: Text(
                  'Double Leg',
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 10,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 44,
                top: 343,
                child: Text(
                  'Average',
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 10,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 44,
                top: 494,
                child: Text(
                  'Average',
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 10,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 44,
                top: 406,
                child: Text(
                  'Left Leg',
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 10,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 44,
                top: 589,
                child: Text(
                  'Single Leg - Left',
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 10,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 97,
                top: 309,
                child: Container(
                  width: 12,
                  height: 12,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: ShapeDecoration(
                            shape: OvalBorder(
                              side: BorderSide(width: 1, color: Color(0xFFFFDEEA)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 2,
                        child: SizedBox(
                          width: 6,
                          child: Text(
                            '?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFFFDEEA),
                              fontSize: 8,
                              fontFamily: 'Archivo',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 88,
                top: 461,
                child: Container(
                  width: 12,
                  height: 12,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: ShapeDecoration(
                            shape: OvalBorder(
                              side: BorderSide(width: 1, color: Color(0xFFFFDEEA)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 2,
                        child: SizedBox(
                          width: 6,
                          child: Text(
                            '?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFFFDEEA),
                              fontSize: 8,
                              fontFamily: 'Archivo',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 44,
                top: 642,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Self Assessment\n',
                        style: TextStyle(
                          color: Color(0xFF390A17),
                          fontSize: 12,
                          fontFamily: 'Figtree',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: 'VISA-A Questionnaire',
                        style: TextStyle(
                          color: Color(0xFF390A17),
                          fontSize: 10,
                          fontFamily: 'Figtree',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 304,
                top: 642,
                child: Text(
                  '84 / 100',
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 12,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                left: 52,
                top: 680,
                child: Text(
                  '1.',
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 12,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                left: 72,
                top: 680,
                child: SizedBox(
                  width: 203,
                  child: Text(
                    'For how many minutes do you have stiffness in the Achilles region on first getting up?',
                    style: TextStyle(
                      color: Color(0xFF390A17),
                      fontSize: 12,
                      fontFamily: 'Figtree',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 305,
                top: 680,
                child: Container(
                  width: 34,
                  height: 34,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                ),
              ),
              Positioned(
                left: 323,
                top: 680,
                child: Text(
                  '7',
                  style: TextStyle(
                    color: Color(0xFFFD6D93),
                    fontSize: 14,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                left: 323,
                top: 740,
                child: Text(
                  '4',
                  style: TextStyle(
                    color: Color(0xFFFD6D93),
                    fontSize: 14,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w400,
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


