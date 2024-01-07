import 'package:flutter/material.dart';
import 'package:spoticok_apk/constants/colors/colors.dart';
import 'package:spoticok_apk/constants/padding/padding.dart';
import 'package:spoticok_apk/constants/textstyle/textstyle.dart';

class BottomSheetShareSong extends StatelessWidget {
  final double height;

  const BottomSheetShareSong({Key? key, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: height,
      ),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF9B2217), Colors.black],
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            bottom: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 60,
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: const Icon(
                  Icons.clear,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text(
                'Share',
                style: AppTextStyle.listOn2TextStyle,
              ),
              centerTitle: true,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 60.0,
                    ),
                    Container(
                      height: 230,
                      width: 230,
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
                      'From Me to You - Mono / Remastered',
                      style: AppTextStyle.titlemoreTextStyle,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      'The Beatles',
                      style: AppTextStyle.artistMore,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 80.0,
            ),
            Padding(
              padding: CustomPadding.kSidePadding,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  String label;
                  String imagePath;
                  Color bgColor;
            
                  switch (index) {
                    case 0:
                      label = 'Copy Link';
                      imagePath = 'images/ic_link.png';
                      bgColor = ColorsCollection.whiteNeutral;
                      break;
                    case 1:
                      label = 'WhatsApp';
                      imagePath = 'images/ic_whatsapp.png';
                      bgColor = ColorsCollection.greenNeutral;
                      break;
                    case 2:
                      label = 'X';
                      imagePath = 'images/ic_x.png';
                      bgColor = ColorsCollection.blackNeutral;
                      break;
                    case 3:
                      label = 'Messages';
                      imagePath = 'images/ic_message.png';
                      bgColor = ColorsCollection.greenNeutral;
                      break;
                    case 4:
                      label = 'More';
                      imagePath = 'images/ic_more.png';
                      bgColor = ColorsCollection.whiteNeutral;
                      break;
                    default:
                      return Container();
                  }
                  return GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: bgColor,
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(8.0),
                          height: 47,
                          width: 47,
                          child: Image.asset(
                            imagePath,
                            height: 24,
                            width: 24,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          label,
                          style: TextStyle(color: ColorsCollection.whiteNeutral),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            Positioned(
              bottom: 0,
              child: Container(
                width: 62.0,
                height: 5.0,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(2.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
