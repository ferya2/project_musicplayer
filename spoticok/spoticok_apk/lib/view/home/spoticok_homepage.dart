import 'package:flutter/material.dart';
import 'package:spoticok_apk/constants/bottomsheet/bottomsheetlisteningon.dart';
import 'package:spoticok_apk/constants/colors/colors.dart';
import 'package:spoticok_apk/constants/textstyle/textstyle.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: ColorsCollection.blackGrey,
        title: Padding(
          padding: const EdgeInsets.only(left: 2),
          child: Text('Recently Played',
              style: AppTextStyle.appbarHomePageTextStyle),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Image(image: AssetImage('images/notif.png'))),
                IconButton(
                    onPressed: () {},
                    icon: const Image(
                        image: AssetImage('images/orientationlock.png'))),
                IconButton(
                    onPressed: () {},
                    icon:
                        const Image(image: AssetImage('images/Settings.png'))),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: ColorsCollection.blackGrey,
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/bgcard.png',
                          fit: BoxFit.fill,
                        ),
                        Text('1 (Remastered)',
                            style: AppTextStyle.btnNavBar2TextStyle),
                      ],
                    ),
                    const SizedBox(width: 16),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: ColorsCollection.whiteNeutral,
                          radius: 50,
                          child: Image.asset(
                            'images/lanadelray.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text('Lana Del Ray',
                            style: AppTextStyle.btnNavBar2TextStyle),
                      ],
                    ),
                    const SizedBox(width: 16),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: ColorsCollection.secondaryColor,
                          radius: 50,
                          child: Image.asset(
                            'images/lanadelray.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text('Lana Del Ray',
                            style: AppTextStyle.btnNavBar2TextStyle),
                      ],
                    ),
                    const SizedBox(width: 16),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/bgcard.png',
                            fit: BoxFit.fill,
                          ),
                          Text('1 (Remastered)',
                              style: AppTextStyle.btnNavBar2TextStyle),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/bgcard.png',
                            fit: BoxFit.fill,
                          ),
                          Text('1 (Remastered)',
                              style: AppTextStyle.btnNavBar2TextStyle),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(children: [
                Image.asset(
                  'images/wraped.png',
                  width: 50,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('#SpotifyWraped',
                        style: AppTextStyle.textSpotifyWraped),
                    Text('Your 2021 review', style: AppTextStyle.textStylepw),
                  ],
                ),
              ]),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/topsong2021.png',
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 4),
                          Text('Your Top Songs',
                              style: AppTextStyle.btnNavBar2TextStyle),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/revealed.png',
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 4),
                          Text('Your Artist Revealed',
                              style: AppTextStyle.btnNavBar2TextStyle),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text('Editor\'s picks', style: AppTextStyle.textStylepw),
              const SizedBox(height: 10),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/1.png',
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Ed Sheeran, Big Sean,\nJuice WRLD, Post Malone',
                            style: AppTextStyle.textSpotifyWraped,
                          )
                        ]),
                    const SizedBox(width: 10),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/2.png',
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Mitski,Tame Impala,\nGlass Animals, Charlie Puth',
                            style: AppTextStyle.textSpotifyWraped,
                          )
                        ]),
                    const SizedBox(width: 10),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/3.png',
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Dua Lipa, Justin Bieber,\nDaddy Yankee, Taylor Swift',
                            style: AppTextStyle.textSpotifyWraped,
                          )
                        ]),
                  ])),
              const SizedBox(height: 20),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/1.png',
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Ed Sheeran, Big Sean,\nJuice WRLD, Post Malone',
                            style: AppTextStyle.textSpotifyWraped,
                          )
                        ]),
                    const SizedBox(width: 10),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/2.png',
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Mitski,Tame Impala,\nGlass Animals, Charlie Puth',
                            style: AppTextStyle.textSpotifyWraped,
                          )
                        ]),
                    const SizedBox(width: 10),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/3.png',
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Dua Lipa, Justin Bieber,\nDaddy Yankee, Taylor Swift',
                            style: AppTextStyle.textSpotifyWraped,
                          )
                        ]),
                  ])),
            ],
          ),
        )),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorsCollection.floatingPlayerMusic,
          ),
          width: MediaQuery.of(context).size.width * 0.9,
          height: 60,
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 40,
                        height: 40,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4.0),
                          child: Image.asset(
                            'images/bgcard.png',
                            fit: BoxFit.fill, // Sesuaikan dengan kebutuhan
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            Text(
                              'From Me to You - Mono Version',
                              style: AppTextStyle.musicplayerTextStyle,
                              overflow: TextOverflow.clip,
                            ),
                            Row(
                              children: [
                                Icon(Icons.bluetooth,
                                    color: ColorsCollection.greenNeutral,
                                    size: 15),
                                Text(
                                  '+BEATSPILL +',
                                  style: AppTextStyle.musicplayer2TextStyle,
                                ),
                              ],
                            )
                          ]),
                      const SizedBox(width: 15),
                      IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            elevation: 15.0,
                            builder: (BuildContext context) {
                              return BottomSheetWidget(
                                  height: MediaQuery.of(context).size.height);
                            },
                          );
                        },
                        icon: Icon(
                          Icons.bluetooth,
                          color: ColorsCollection.greenNeutral,
                        ),
                      ),
                      Icon(Icons.pause, color: ColorsCollection.whiteNeutral),
                    ],
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
