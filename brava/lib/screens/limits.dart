import 'package:flutter/material.dart';

class Limits extends StatelessWidget {
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
                left: 31,
                top: 49,
                child: Text(
                  'Training Load Limit Log',
                  style: TextStyle(
                    color: Color(0xFF131214),
                    fontSize: 16,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                left: 31,
                top: 94,
                child: Text(
                  'Current Limit',
                  style: TextStyle(
                    color: Color(0xFF131214),
                    fontSize: 16,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w400,
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
                left: 25,
                top: 266,
                child: Container(
                  width: 349,
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
                left: 32,
                top: 121,
                child: Container(
                  width: 328,
                  height: 83,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 328,
                          height: 83,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFF9FB),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 175,
                        top: 24,
                        child: SizedBox(
                          width: 120,
                          height: 50,
                          child: Text(
                            'Preparing for symposium, don’t want to aggravate...',
                            style: TextStyle(
                              color: Color(0xFF131214),
                              fontSize: 12,
                              fontFamily: 'Figtree',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 8.57,
                        child: Text(
                          'Symposium Prep',
                          style: TextStyle(
                            color: Color(0xFF390A17),
                            fontSize: 12,
                            fontFamily: 'Figtree',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15,
                        top: 25,
                        child: Text(
                          'Mar 1, 2025 - Mar 19, 2025',
                          style: TextStyle(
                            color: Color(0xFF390A17),
                            fontSize: 10,
                            fontFamily: 'Figtree',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 22,
                        top: 49,
                        child: Text(
                          '80%',
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
                        left: 107,
                        top: 49,
                        child: Text(
                          '95%',
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
                        left: 175,
                        top: 11.22,
                        child: SizedBox(
                          width: 44,
                          height: 12,
                          child: Text(
                            'Notes',
                            style: TextStyle(
                              color: Color(0xFF390A17),
                              fontSize: 12,
                              fontFamily: 'Figtree',
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
                left: 60,
                top: 239,
                child: Text(
                  'Previous Limits',
                  style: TextStyle(
                    color: Color(0xFF131214),
                    fontSize: 16,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                left: 32,
                top: 378,
                child: Container(
                  width: 328,
                  height: 83,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 328,
                          height: 83,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFF9FB),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 175,
                        top: 24,
                        child: SizedBox(
                          width: 114,
                          height: 50,
                          child: Text(
                            'Physio told me to take it easy during the Mouse King ...',
                            style: TextStyle(
                              color: Color(0xFF131214),
                              fontSize: 12,
                              fontFamily: 'Figtree',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 10.57,
                        child: SizedBox(
                          width: 125,
                          height: 11.38,
                          child: Text(
                            'Nutcracker Rehearsals',
                            style: TextStyle(
                              color: Color(0xFF390A17),
                              fontSize: 12,
                              fontFamily: 'Figtree',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15,
                        top: 25,
                        child: Text(
                          'Dec 5, 2024 - Dec 10, 2024 ',
                          style: TextStyle(
                            color: Color(0xFF390A17),
                            fontSize: 10,
                            fontFamily: 'Figtree',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 23,
                        top: 49,
                        child: SizedBox(
                          width: 33,
                          height: 15.45,
                          child: Text(
                            '50%',
                            style: TextStyle(
                              color: Color(0xFF390A17),
                              fontSize: 16,
                              fontFamily: 'Figtree',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 106,
                        top: 49,
                        child: SizedBox(
                          width: 34,
                          height: 15.45,
                          child: Text(
                            '80%',
                            style: TextStyle(
                              color: Color(0xFF390A17),
                              fontSize: 16,
                              fontFamily: 'Figtree',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 175,
                        top: 11.22,
                        child: SizedBox(
                          width: 44,
                          height: 12,
                          child: Text(
                            'Notes',
                            style: TextStyle(
                              color: Color(0xFF390A17),
                              fontSize: 12,
                              fontFamily: 'Figtree',
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
                left: 32,
                top: 280,
                child: Container(
                  width: 328,
                  height: 83,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 328,
                          height: 83,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFF9FB),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 175,
                        top: 24,
                        child: SizedBox(
                          width: 114,
                          height: 50,
                          child: Text(
                            'Ankle feeling really good, want to safely strengthen now.',
                            style: TextStyle(
                              color: Color(0xFF131214),
                              fontSize: 12,
                              fontFamily: 'Figtree',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 8.57,
                        child: Text(
                          'New Year Strengthening',
                          style: TextStyle(
                            color: Color(0xFF390A17),
                            fontSize: 12,
                            fontFamily: 'Figtree',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15,
                        top: 25,
                        child: Text(
                          'Jan 5, 2025 - Feb 5, 2025',
                          style: TextStyle(
                            color: Color(0xFF390A17),
                            fontSize: 10,
                            fontFamily: 'Figtree',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 23,
                        top: 49,
                        child: SizedBox(
                          width: 33,
                          height: 15.45,
                          child: Text(
                            '60%',
                            style: TextStyle(
                              color: Color(0xFF390A17),
                              fontSize: 16,
                              fontFamily: 'Figtree',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 105,
                        top: 49,
                        child: Text(
                          '110%',
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
                        left: 175,
                        top: 11.22,
                        child: SizedBox(
                          width: 44,
                          height: 12,
                          child: Text(
                            'Notes',
                            style: TextStyle(
                              color: Color(0xFF390A17),
                              fontSize: 12,
                              fontFamily: 'Figtree',
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
                left: 32,
                top: 672,
                child: Container(
                  width: 328,
                  height: 83,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 328,
                          height: 83,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFF9FB),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 175,
                        top: 24,
                        child: SizedBox(
                          width: 114,
                          height: 50,
                          child: Text(
                            'Slowly increasing training load after vacation.',
                            style: TextStyle(
                              color: Color(0xFF131214),
                              fontSize: 12,
                              fontFamily: 'Figtree',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 10.57,
                        child: SizedBox(
                          width: 125,
                          height: 11.38,
                          child: Text(
                            'Vacation Return',
                            style: TextStyle(
                              color: Color(0xFF390A17),
                              fontSize: 12,
                              fontFamily: 'Figtree',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15,
                        top: 25,
                        child: Text(
                          'Oct 18, 2024 - Oct 25, 2024 ',
                          style: TextStyle(
                            color: Color(0xFF390A17),
                            fontSize: 10,
                            fontFamily: 'Figtree',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 23,
                        top: 49,
                        child: SizedBox(
                          width: 33,
                          height: 15.45,
                          child: Text(
                            '50%',
                            style: TextStyle(
                              color: Color(0xFF390A17),
                              fontSize: 16,
                              fontFamily: 'Figtree',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 103,
                        top: 49,
                        child: Text(
                          '100%',
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
                        left: 175,
                        top: 11.22,
                        child: SizedBox(
                          width: 44,
                          height: 12,
                          child: Text(
                            'Notes',
                            style: TextStyle(
                              color: Color(0xFF390A17),
                              fontSize: 12,
                              fontFamily: 'Figtree',
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
                left: 32,
                top: 574,
                child: Container(
                  width: 328,
                  height: 83,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 328,
                          height: 83,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFF9FB),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 10.57,
                        child: SizedBox(
                          width: 125,
                          height: 11.38,
                          child: Text(
                            'Technique Classes',
                            style: TextStyle(
                              color: Color(0xFF390A17),
                              fontSize: 12,
                              fontFamily: 'Figtree',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15,
                        top: 25,
                        child: Text(
                          'Nov 6, 2024 - Nov 12, 2024 ',
                          style: TextStyle(
                            color: Color(0xFF390A17),
                            fontSize: 10,
                            fontFamily: 'Figtree',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 62,
                        top: 49,
                        child: SizedBox(
                          width: 33,
                          height: 15.45,
                          child: Text(
                            '60%',
                            style: TextStyle(
                              color: Color(0xFF390A17),
                              fontSize: 16,
                              fontFamily: 'Figtree',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 175,
                        top: 35,
                        child: Text(
                          'No notes',
                          style: TextStyle(
                            color: Color(0xFFCDC0C0),
                            fontSize: 12,
                            fontStyle: FontStyle.italic,
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
                left: 32,
                top: 476,
                child: Container(
                  width: 328,
                  height: 83,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 328,
                          height: 83,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFF9FB),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 175,
                        top: 24,
                        child: SizedBox(
                          width: 114,
                          height: 50,
                          child: Text(
                            'Ankle feeling better so all clear to start ramping up!',
                            style: TextStyle(
                              color: Color(0xFF131214),
                              fontSize: 12,
                              fontFamily: 'Figtree',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 10.57,
                        child: SizedBox(
                          width: 125,
                          height: 11.38,
                          child: Text(
                            'Choreo Weeks',
                            style: TextStyle(
                              color: Color(0xFF390A17),
                              fontSize: 12,
                              fontFamily: 'Figtree',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15,
                        top: 25,
                        child: Text(
                          'Nov 23, 2024 - Dec 3, 2024 ',
                          style: TextStyle(
                            color: Color(0xFF390A17),
                            fontSize: 10,
                            fontFamily: 'Figtree',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 23,
                        top: 46,
                        child: SizedBox(
                          width: 33,
                          height: 15.45,
                          child: Text(
                            '20%',
                            style: TextStyle(
                              color: Color(0xFF390A17),
                              fontSize: 16,
                              fontFamily: 'Figtree',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 106,
                        top: 46,
                        child: SizedBox(
                          width: 34,
                          height: 15.45,
                          child: Text(
                            '40%',
                            style: TextStyle(
                              color: Color(0xFF390A17),
                              fontSize: 16,
                              fontFamily: 'Figtree',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 175,
                        top: 11.22,
                        child: SizedBox(
                          width: 44,
                          height: 12,
                          child: Text(
                            'Notes',
                            style: TextStyle(
                              color: Color(0xFF390A17),
                              fontSize: 12,
                              fontFamily: 'Figtree',
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
                left: 349,
                top: 245,
                child: Container(
                  width: 13,
                  height: 8,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(width: 13, height: 8, child: Stack()),
                      ),
                    ],
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