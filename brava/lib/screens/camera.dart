import 'package:flutter/material.dart';

class Camera extends StatelessWidget {
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
                left: 30,
                top: 418,
                child: Opacity(
                  opacity: 0.80,
                  child: Container(
                    width: 333,
                    height: 48,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFFF9FB),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 486,
                child: Container(
                  width: 333,
                  height: 48,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFF9FB),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
              Positioned(
                left: 76,
                top: 433,
                child: Text(
                  'Use phone camera',
                  style: TextStyle(
                    color: Color(0xFF131214),
                    fontSize: 16,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                left: 47,
                top: 496,
                child: SizedBox(
                  width: 150,
                  height: 30,
                  child: Text(
                    'Janet’s iPhone',
                    style: TextStyle(
                      color: Color(0xFF131214),
                      fontSize: 16,
                      fontFamily: 'Figtree',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 47,
                top: 435,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFFFDEEA)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 96,
                child: Container(
                  width: 333,
                  height: 271,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 333,
                          height: 271,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFFCDC0C0)),
                              borderRadius: BorderRadius.circular(10),
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
                top: 335,
                child: Container(
                  width: 41,
                  height: 22,
                  decoration: ShapeDecoration(
                    color: Color(0xFFCDC0C0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 47,
                top: 338,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 98,
                top: 336,
                child: Text(
                  'See preview',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF131214),
                    fontSize: 16,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                left: 35,
                top: 693,
                child: Container(
                  width: 150,
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
                        '+ Add Camera',
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
                left: 208,
                top: 693,
                child: Container(
                  width: 150,
                  height: 44,
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
                        'Disconnect All',
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
                left: 329,
                top: 422,
                child: Text(
                  '...',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF131214),
                    fontSize: 20,
                    fontFamily: 'Aoboshi One',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                left: 329,
                top: 488,
                child: Text(
                  '...',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF131214),
                    fontSize: 20,
                    fontFamily: 'Aoboshi One',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                left: 50,
                top: 438,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFD6D93),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
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
                left: 31,
                top: 49,
                child: Text(
                  'Camera Connections',
                  style: TextStyle(
                    color: Color(0xFF390A17),
                    fontSize: 16,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                left: 31,
                top: 49,
                child: Text(
                  'Camera Connections',
                  style: TextStyle(
                    color: Color(0xFF131214),
                    fontSize: 16,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                left: 329,
                top: 336,
                child: Container(
                  width: 20,
                  height: 20,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xFF390A17)),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 1.50,
                        top: 12,
                        child: Container(
                          width: 8,
                          height: 1.50,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1000),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 18.50,
                        child: Container(
                          width: 8,
                          height: 1.50,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1000),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 7.25,
                        child: Container(
                          width: 8,
                          height: 1.50,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1000),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 8,
                          height: 1.50,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1000),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 12,
                        child: Container(
                          width: 8,
                          height: 1.50,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1000),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 20,
                        child: Container(
                          width: 9,
                          height: 1.50,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1000),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 1.50,
                        child: Container(
                          width: 8,
                          height: 1.50,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1000),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 18.50,
                        top: 8.12,
                        child: Container(
                          width: 8,
                          height: 1.50,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1000),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 185,
                top: 211,
                child: Container(width: 24, height: 24, child: Stack()),
              ),
            ],
          ),
        ),
      ],
    );
  }
}