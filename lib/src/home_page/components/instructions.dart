import 'package:flutter/material.dart';
import 'package:plant_disease_detector/constants/constants.dart';

class InstructionsSection extends SliverFixedExtentList {
  InstructionsSection(Size size, {Key? key})
      : super(
          key: key,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, index) {
              return Padding(
                padding: EdgeInsets.fromLTRB(
                    (0.061 * size.height * 0.26),
                    (0.071 * size.height * 0.26),
                    (0.076 * size.height * 0.26),
                    (0.061 * size.height * 0.26)),
                child: Container(
                  height: size.height * 0.26,
                  decoration: BoxDecoration(
                    color: kSecondary,
                    borderRadius:
                        BorderRadius.circular((0.061 * size.height * 0.26)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB((0.025 * size.height * 0.26),
                        (0.025 * size.height), 0, 0),
                    child: ListView(
                      children: const [
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: kMain,
                              child: Text(
                                '1',
                                style: TextStyle(color: kWhite),
                              ),
                            ),
                            title: Text(
                              'Select a photo of an affected plant from your device by tapping the icon button at the bottom of the page.',
                              style: TextStyle(color: kWhite),
                            )),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: kMain,
                            child: Text(
                              '2',
                              style: TextStyle(color: kWhite),
                            ),
                          ),
                          title: Text(
                              'The photo should have only a single leaf of the plant to be identified and be taken on plain background preferably on white sheet.',
                              style: TextStyle(color: kWhite)),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            childCount: 1,
          ),
          itemExtent: size.height * 0.26,
        );
}
