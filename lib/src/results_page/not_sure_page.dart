import 'package:flutter/material.dart';
import 'package:plant_disease_detector/constants/constants.dart';
import 'package:plant_disease_detector/src/results_page/components/text_property.dart';

class NotSurePage extends StatelessWidget {
  const NotSurePage({Key? key}) : super(key: key);

  static const routeName = '/notsurepage';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kMain,
          title: const Text('Results'),
        ),
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bgr.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: EdgeInsets.all((0.02 * size.height)),
              child: Column(
                children: [
                  Flexible(
                      child: Center(
                    child: CircleAvatar(
                      radius: size.width * 0.3,
                      backgroundImage:
                          const AssetImage('assets/images/dont_know.png'),
                      backgroundColor: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                          image: const DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/images/dont_know.png'),
                          ),
                        ),
                      ),
                    ),
                  )),
                  Divider(
                    thickness: (0.0066 * size.height),
                    height: (0.013 * size.height),
                  ),
                  SizedBox(
                    height: size.height * 0.5,
                    child: ListView(
                      children: [
                        TextProperty(
                          title: 'Leaf name',
                          value: "Can't tell",
                          height: size.height,
                        ),
                        // TextProperty(
                        //   title: 'Possible causes',
                        //   value: 'N/A',
                        //   height: size.height,
                        // ),
                        TextProperty(
                          title: 'Possible solution',
                          value: 'Provide a different photo.',
                          height: size.height,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
