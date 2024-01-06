import 'package:flutter/material.dart';
import 'package:spoticok_apk/constants/colors/colors.dart';
import 'package:spoticok_apk/constants/padding/padding.dart';
import 'package:spoticok_apk/constants/textstyle/textstyle.dart';

class BottomSheetSongMore extends StatefulWidget {
  final double height;

  const BottomSheetSongMore({Key? key, required this.height}) : super(key: key);

  @override
  _BottomSheetSongMoreState createState() => _BottomSheetSongMoreState();
}

class _BottomSheetSongMoreState extends State<BottomSheetSongMore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: widget.height,
      ),
      decoration: BoxDecoration(
        color: ColorsCollection.blackGrey,
        borderRadius: BorderRadius.circular(20.0),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.center,
          colors: [Color(0xFF9B2217), Colors.black],
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 60.0,
                ),
                Container(
                  height: 160,
                  width: 160,
                  margin: const EdgeInsets.only(
                    bottom: 8.0,
                  ),
                  child: Image.asset(
                    'images/beatles.png',
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Text(
                  '1(Remastered)',
                  style: AppTextStyle.titlemoreTextStyle,
                ),
                Text(
                  'The Beatles',
                  style: AppTextStyle.moreGenrePod,
                ),
                const SizedBox(
                  height: 40.0,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: CustomPadding.sidePadding,
              child: ListView(
                children: [
                  Row(
                    children: [
                      Image(
                        image: const AssetImage('images/ic_love.png'),
                        height: 21,
                        width: 20,
                        color: ColorsCollection.whiteNeutral,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Like',
                        style: AppTextStyle.listOn2TextStyle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Image(
                        image: const AssetImage('images/ic_hide.png'),
                        height: 21,
                        width: 20,
                        color: ColorsCollection.whiteNeutral,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Hide song',
                        style: AppTextStyle.listOn2TextStyle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Image(
                        image: const AssetImage('images/ic_addplaylist.png'),
                        height: 21,
                        width: 20,
                        color: ColorsCollection.whiteNeutral,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Add to playlist',
                        style: AppTextStyle.listOn2TextStyle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Image(
                        image: const AssetImage('images/ic_addqueue.png'),
                        height: 21,
                        width: 20,
                        color: ColorsCollection.whiteNeutral,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Add to queue',
                        style: AppTextStyle.listOn2TextStyle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Image(
                        image: const AssetImage('images/ic_share.png'),
                        height: 21,
                        width: 20,
                        color: ColorsCollection.whiteNeutral,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Share',
                        style: AppTextStyle.listOn2TextStyle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Image(
                        image: const AssetImage('images/ic_radio.png'),
                        height: 21,
                        width: 20,
                        color: ColorsCollection.whiteNeutral,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Go to radio',
                        style: AppTextStyle.listOn2TextStyle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Image(
                        image: const AssetImage('images/ic_album.png'),
                        height: 21,
                        width: 20,
                        color: ColorsCollection.whiteNeutral,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'View album',
                        style: AppTextStyle.listOn2TextStyle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Image(
                        image: const AssetImage('images/ic_viewartist.png'),
                        height: 21,
                        width: 20,
                        color: ColorsCollection.whiteNeutral,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'View artist',
                        style: AppTextStyle.listOn2TextStyle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Image(
                        image: const AssetImage('images/ic_credits.png'),
                        height: 21,
                        width: 20,
                        color: ColorsCollection.whiteNeutral,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Song credits',
                        style: AppTextStyle.listOn2TextStyle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Image(
                        image: const AssetImage('images/ic_moon.png'),
                        height: 21,
                        width: 20,
                        color: ColorsCollection.whiteNeutral,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Sleep timer',
                        style: AppTextStyle.listOn2TextStyle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Close', style: AppTextStyle.moreGenrePod),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
