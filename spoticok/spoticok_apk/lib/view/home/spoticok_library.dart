import 'package:flutter/material.dart';
import 'package:spoticok_apk/constants/colors/colors.dart';
import 'package:spoticok_apk/constants/padding/padding.dart';
import 'package:spoticok_apk/constants/textstyle/textstyle.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: ColorsCollection.libraryGreeenAccent,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_new_sharp,
                  color: ColorsCollection.abuTextField)),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                ))
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.6, 0.8, 2.0],
              colors: [
                ColorsCollection.blackGrey,
                ColorsCollection.libraryGreeenDark,
                ColorsCollection.libraryGreeenAccent,
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(children: [
              CircleAvatar(
                backgroundColor: ColorsCollection.whiteNeutral,
                radius: 55,
                child: const Image(image: AssetImage('images/orang.png')),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsCollection.lightGrey,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  onPressed: () {},
                  child: Text(
                    'Edit Profile',
                    style: AppTextStyle.btnNavBar2TextStyle,
                  )),
              const SizedBox(height: 30),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Column(
                  children: [
                    Text(
                      '23',
                      style: AppTextStyle.btnNavBar2TextStyle,
                    ),
                    Text(
                      'PLAYLISTS',
                      style: AppTextStyle.subTextListTile,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '58',
                      style: AppTextStyle.btnNavBar2TextStyle,
                    ),
                    Text(
                      'FOLLOWERS',
                      style: AppTextStyle.subTextListTile,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '2',
                      style: AppTextStyle.btnNavBar2TextStyle,
                    ),
                    Text(
                      'FOLLOWING',
                      style: AppTextStyle.subTextListTile,
                    )
                  ],
                ),
              ]),
              const SizedBox(height: 30),
              Padding(
                padding: CustomPadding.k2SidePadding,
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Playlist', style: AppTextStyle.textStylepw)),
              ),
              const SizedBox(height: 10),
              const ListViewPage(),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('See all playlists',
                            style: AppTextStyle.btnsignup2TextStyle),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: ColorsCollection.abuTextField,
                            ))
                      ],
                    )),
              ),
            ]),
          ),
        ));
  }
}

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Column(
          children: [
            ListTile(
              leading: const Image(image: AssetImage('images/1.png')),
              title: Text(
                'Shazam',
                style: AppTextStyle.emailignup2TextStyle,
              ),
              subtitle: Text(
                '21K Likes',
                style: AppTextStyle.subTextListTile,
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: ColorsCollection.abuTextField,
                  size: 20,
                ),
              ),
            ),
            ListTile(
              leading: const Image(image: AssetImage('images/2.png')),
              title: Text(
                'Ed Sheeran',
                style: AppTextStyle.emailignup2TextStyle,
              ),
              subtitle: Text(
                '11K Likes',
                style: AppTextStyle.subTextListTile,
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: ColorsCollection.abuTextField,
                  size: 20,
                ),
              ),
            ),
            ListTile(
              leading: const Image(image: AssetImage('images/bgcard.png')),
              title: Text(
                'Asomase',
                style: AppTextStyle.emailignup2TextStyle,
              ),
              subtitle: Text(
                '9K Likes',
                style: AppTextStyle.subTextListTile,
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: ColorsCollection.abuTextField,
                  size: 20,
                ),
              ),
            ),
            ListTile(
              leading: const Image(image: AssetImage('images/bgcard.png')),
              title: Text(
                'Asomase',
                style: AppTextStyle.emailignup2TextStyle,
              ),
              subtitle: Text(
                '9K Likes',
                style: AppTextStyle.subTextListTile,
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: ColorsCollection.abuTextField,
                  size: 20,
                ),
              ),
            ),
            // ...Tambahkan item ListTile lainnya di sini
          ],
        ),
      ),
    );
  }
}
