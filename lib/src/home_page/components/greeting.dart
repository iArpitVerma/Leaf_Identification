import 'package:flutter/material.dart';
import 'package:plant_disease_detector/constants/constants.dart';

class GreetingSection extends SliverFixedExtentList {
  GreetingSection(double height, {Key? key})
      : super(
          key: key,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, index) {
              return Padding(
                padding: EdgeInsets.fromLTRB(
                    (0.12 * height), 0, (height * 0.12), (0.086 * height)),
                child: Container(
                  decoration: BoxDecoration(
                    color: kSecondary,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular((0.079 * height)),
                        bottomRight: Radius.circular((0.079 * height))),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        (0.092 * height), 0, 0, (0.099 * height)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Plant Disease Detection',
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
