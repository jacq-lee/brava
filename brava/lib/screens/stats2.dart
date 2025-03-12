import 'package:flutter/material.dart';

class Stats2 extends StatelessWidget {
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
                top: 193,
                child: Container(
                  width: 330,
                  height: 563,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFF9FB),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
              Positioned(
                left: 275,
                top: 297,
                child: SizedBox(
                  width: 48,
                  child: Text(
                    '10',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF390A17),
                      fontSize: 9.50,
                      fontFamily: 'Figtree',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 52,
                top: 259,
                child: Text(
                  '6.',
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
                top: 259,
                child: SizedBox(
                  width: 221,
                  child: Text(
                    'How many single leg hops can you do without pain?',
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
                left: 332,
                top: 259,
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
                left: 192,
                top: 308,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: ShapeDecoration(
                    color: Color(0xFFEF3A69),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 70,
                top: 297,
                child: SizedBox(
                  width: 48,
                  child: Text(
                    '0',
                    style: TextStyle(
                      color: Color(0xFF390A17),
                      fontSize: 9.50,
                      fontFamily: 'Figtree',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 94,
                top: 318,
                child: Container(
                  width: 3,
                  height: 3,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFDEEA),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 120,
                top: 318,
                child: Container(
                  width: 3,
                  height: 3,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFDEEA),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 145,
                top: 318,
                child: Container(
                  width: 3,
                  height: 3,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFDEEA),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 170,
                top: 318,
                child: Container(
                  width: 3,
                  height: 3,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFDEEA),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 195,
                top: 318,
                child: Container(
                  width: 3,
                  height: 3,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFDEEA),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 220,
                top: 318,
                child: Container(
                  width: 3,
                  height: 3,
                  decoration: ShapeDecoration(
                    color: Color(0xFFCDC0C0),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 245,
                top: 318,
                child: Container(
                  width: 3,
                  height: 3,
                  decoration: ShapeDecoration(
                    color: Color(0xFFCDC0C0),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 270,
                top: 318,
                child: Container(
                  width: 3,
                  height: 3,
                  decoration: ShapeDecoration(
                    color: Color(0xFFCDC1C1),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 295,
                top: 318,
                child: Container(
                  width: 3,
                  height: 3,
                  decoration: ShapeDecoration(
                    color: Color(0xFFCDC1C1),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 72,
                top: 576,
                child: Container(
                  width: 252,
                  height: 30,
                  padding: const EdgeInsets.only(
                    top: 11,
                    left: 16,
                    right: 10,
                    bottom: 11,
                  ),
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFEBF2),
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
                      SizedBox(
                        width: 209,
                        child: Text(
                          'Some pain, does not stop me from completing my activity',
                          style: TextStyle(
                            color: Color(0xFF390A17),
                            fontSize: 10,
                            fontFamily: 'Figtree',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 314,
                top: 206,
                child: Text(
                  '- / 100',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 12,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                left: 250,
                top: 202,
                child: Container(
                  width: 42,
                  height: 20,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFF9FB),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFFFDEEA)),
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
                        'Cancel',
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
                left: 52,
                top: 356,
                child: Text(
                  '7.',
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
                top: 540,
                child: Text(
                  '8.',
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
                top: 356,
                child: SizedBox(
                  width: 221,
                  child: Text(
                    'Are you currently undertaking sport or other physical activity?',
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
                top: 540,
                child: SizedBox(
                  width: 221,
                  child: Text(
                    'Level of pain while undertaking Achilles tendon loading sports:',
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
                top: 620,
                child: SizedBox(
                  width: 221,
                  child: Text(
                    'B.   For how long can you train/practise?',
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
                left: 333,
                top: 356,
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
              Positioned(
                left: 324,
                top: 538,
                child: Text(
                  '20',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFFFD6D93),
                    fontSize: 14,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                left: 44,
                top: 206,
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
                                  fontFamily: 'Archivo',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'Weekly',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF390A17),
                                  fontSize: 12,
                                  fontFamily: 'Archivo',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'Monthly',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF390A17),
                                  fontSize: 12,
                                  fontFamily: 'Archivo',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'Yearly',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF390A17),
                                  fontSize: 12,
                                  fontFamily: 'Archivo',
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
                left: 148,
                top: 151,
                child: Text(
                  'Mar 20, 2025',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 16,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w700,
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
                left: 150,
                top: 702,
                child: Container(
                  width: 93,
                  height: 37,
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
                        'Calculate',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF390A17),
                          fontSize: 14,
                          fontFamily: 'Figtree',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: -142,
                top: 875,
                child: Container(
                  width: 90,
                  height: 37,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFD6D93),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 72,
                top: 650,
                child: SizedBox(
                  width: 15,
                  child: Text(
                    'NIL',
                    style: TextStyle(
                      color: Color(0xFF390A17),
                      fontSize: 9.50,
                      fontFamily: 'Figtree',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 98,
                top: 395,
                child: Text(
                  'Not at all',
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 10,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 98,
                top: 420,
                child: SizedBox(
                  width: 220,
                  child: Text(
                    'Modified training ± modified competition/performance',
                    style: TextStyle(
                      color: Color(0xFF390A17),
                      fontSize: 10,
                      fontFamily: 'Figtree',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 98,
                top: 451,
                child: SizedBox(
                  width: 220,
                  child: Text(
                    'Full training ± competition/performance but not at the same level as when symptoms began',
                    style: TextStyle(
                      color: Color(0xFF390A17),
                      fontSize: 10,
                      fontFamily: 'Figtree',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 98,
                top: 482,
                child: SizedBox(
                  width: 220,
                  child: Text(
                    'Competing/performing at the same or higher level as when symptoms began',
                    style: TextStyle(
                      color: Color(0xFF390A17),
                      fontSize: 10,
                      fontFamily: 'Figtree',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 128,
                top: 639,
                child: Text(
                  '1-10 \nmins',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 9.50,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 185,
                top: 639,
                child: Text(
                  '11-20 \nmins',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 9.50,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 243,
                top: 639,
                child: Text(
                  '21-30 \nmins',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 9.50,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 306,
                top: 639,
                child: Text(
                  '>30 \nmins',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 9.50,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 72,
                top: 665,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(
                      side: BorderSide(width: 1, color: Color(0xFFFFDEEA)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 72,
                top: 393,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(
                      side: BorderSide(width: 1, color: Color(0xFFFFDEEA)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 72,
                top: 423,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(
                      side: BorderSide(width: 1, color: Color(0xFFFFDEEA)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 72,
                top: 454,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(
                      side: BorderSide(width: 1, color: Color(0xFFFFDEEA)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 72,
                top: 485,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(
                      side: BorderSide(width: 1, color: Color(0xFFFFDEEA)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 308,
                top: 665,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(
                      side: BorderSide(width: 1, color: Color(0xFFFFDEEA)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 249,
                top: 665,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(
                      side: BorderSide(width: 1, color: Color(0xFFFFDEEA)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 190,
                top: 665,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(
                      side: BorderSide(width: 1, color: Color(0xFFFFDEEA)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 131,
                top: 665,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(
                      side: BorderSide(width: 1, color: Color(0xFFFFDEEA)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 311,
                top: 668,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFD6D93),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 75,
                top: 426,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFD6D93),
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