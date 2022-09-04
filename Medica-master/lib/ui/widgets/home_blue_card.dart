import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class HomeBlueCard extends StatelessWidget {
  final String headText;
  final String contText;
  final String buttonText;
  final String image;
  final double position;
  const HomeBlueCard(
      {Key? key,
      required this.headText,
      required this.contText,
      required this.buttonText,
      required this.image,
      required this.position})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 18.0, left: 20, right: 20),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 18, left: 14, bottom: 10),
                      child: Text(
                        headText,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, left: 14),
                      child: SizedBox(
                        width: 180,
                        child: Text(
                          contText,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 0, left: 14),
                      child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          onPressed: () {},
                          child: Text(
                            buttonText,
                            style: const TextStyle(color: Colors.blue),
                          )),
                    ),
                  ],
                ),
                Image(
                  image: AssetImage(image),
                  height: 130,
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 10,
          child: DotsIndicator(
            position: position,
            decorator: DotsDecorator(
              size: const Size.square(7.0),
              activeSize: const Size(18.0, 7.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(45)),
              activeColor: Colors.white,
              color: Colors.white,
              spacing: const EdgeInsets.all(4),
            ),
            dotsCount: 3,
          ),
        )
      ],
    );
  }
}
