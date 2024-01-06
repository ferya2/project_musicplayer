import 'package:flutter/material.dart';
import 'package:spoticok_apk/constants/colors/colors.dart';
import 'package:spoticok_apk/constants/padding/padding.dart';
import 'package:spoticok_apk/constants/textstyle/textstyle.dart';
import 'dart:math' as math;

class BottomSheetWidget extends StatefulWidget {
  final double height;

  const BottomSheetWidget({Key? key, required this.height}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  double _currentSliderValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: widget.height,
      ),
      decoration: BoxDecoration(
        color: ColorsCollection.blackGrey,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 62.0,
                height: 5.0,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(2.5),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0.0, right: 1.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.close,
                  color: Colors.grey,
                  size: 20,
                ),
              ),
            ),
          ),
          Column(
            children: [
              ListTile(
                leading: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(math.pi),
                  child: Icon(
                    Icons.signal_cellular_alt_2_bar_outlined,
                    size: 40,
                    color: ColorsCollection.greenSpot,
                  ),
                ),
                title: Text(
                  'Listening On',
                  style: AppTextStyle.listOnTextStyle,
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.bluetooth,
                      color: ColorsCollection.greenSpot,
                      size: 12,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      'BeatsPill+',
                      style: AppTextStyle.subTextLisOnListTile,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: CustomPadding.k2SidePadding,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Select a device',
                    style: AppTextStyle.listOn3TextStyle,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              ListTile(
                leading: const Image(
                  image: AssetImage('images/ic_comp.png'),
                  height: 40,
                  width: 40,
                ),
                title: Text(
                  'BRAVIA 4K GB',
                  style: AppTextStyle.listOn2TextStyle,
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.cast,
                      color: ColorsCollection.textSubList,
                      size: 12,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'Google Cast',
                      style: AppTextStyle.subTextListTile,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: const Image(
                  image: AssetImage('images/ic_laptop.png'),
                  height: 40,
                  width: 40,
                ),
                title: Text(
                  'Momitha’s MacBook Pro',
                  style: AppTextStyle.listOn2TextStyle,
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    color: ColorsCollection.abuTextField,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: const Image(
                  image: AssetImage('images/ic_airplay.png'),
                  height: 40,
                  width: 40,
                ),
                title: Text(
                  'Airplay or Bluetooth',
                  style: AppTextStyle.listOn2TextStyle,
                ),
              ),
              const SizedBox(height: 10),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      Text(
                        'Start a Group Session',
                        style: AppTextStyle.listOn4TextStyle,
                      ),
                      const SizedBox(width: 7.0),
                      const Image(
                        image: AssetImage('images/ic_beta.png'),
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: CustomPadding.k2SidePadding,
                child: Text(
                  'Listen with friends, in real time. Pick what to play and control the music together.',
                  style: AppTextStyle.listOn5TextStyle,
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 50),
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: ColorsCollection.whiteNeutral,
                      radius: 36,
                      child: const Image(image: AssetImage('images/orang.png')),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      height: 49,
                      width: 169,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorsCollection.reqs4TextGr,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(21))),
                        child: Text(
                          'Start Session',
                          style: AppTextStyle.listOnBtnTextStyle,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 28,
                      width: 106,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: ColorsCollection.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(21),
                                side: BorderSide(
                                    color: ColorsCollection.checkMarkOutline))),
                        child: Text(
                          'Scan to join',
                          style: AppTextStyle.listOnBtn2TextStyle,
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: Image(
                                      image: AssetImage('images/ic_volume.png'),
                                      height: 18,
                                      width: 18,
                                    ),
                                  ),
                                  Expanded(
                                    child: SliderTheme(
                                      data: SliderTheme.of(context).copyWith(
                                        trackHeight: 2.0,
                                        thumbShape: const RoundSliderThumbShape(
                                          enabledThumbRadius: 6.0,
                                        ),
                                      ),
                                      child: Slider(
                                        value: _currentSliderValue,
                                        onChanged: (value) {
                                          setState(() {
                                            _currentSliderValue = value;
                                          });
                                        },
                                        activeColor:
                                            ColorsCollection.reqs4TextGr,
                                        inactiveColor:
                                            ColorsCollection.textField,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
