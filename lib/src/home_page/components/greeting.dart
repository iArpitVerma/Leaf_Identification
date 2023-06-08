import 'package:flutter/material.dart';
import 'package:plant_disease_detector/constants/constants.dart';

class GreetingSection extends SliverFixedExtentList {
  GreetingSection(double height, {Key? key})
      : super(
          key: key,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, index) {
              return Padding(
                padding: EdgeInsets.fromLTRB((0.12 * height), (height * 0.12),
                    (height * 0.12), (0.006 * height)),
                child: Container(
                  decoration: BoxDecoration(
                      color: kSecondary,
                      borderRadius: BorderRadius.all(
                        (Radius.circular((0.09 * height))),
                      )),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB((0.092 * height), 0, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Leaf Identification',
                          style: TextStyle(
                              fontFamily: 'SFBold',
                              fontSize: (0.25 * height),
                              color: kWhite),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            childCount: 1,
          ),
          itemExtent: height,
        );
}
