import 'package:flutter/material.dart';
import 'package:spoticok_apk/constants/colors/colors.dart';
import 'package:spoticok_apk/constants/padding/padding.dart';
import 'package:spoticok_apk/constants/textstyle/textstyle.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: ColorsCollection.bgColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: ColorsCollection.abuTextField,
            )),
        title: Text(
          'Settings',
          style: AppTextStyle.appbarHomePageTextStyle,
        ),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: ColorsCollection.blackGrey,
        child: SingleChildScrollView(
            child: Padding(
          padding: CustomPadding.k2SidePadding,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  child: Image.asset('images/orang.png'),
                ),
                title: Text('Maya ', style: AppTextStyle.appBarTitleStyle),
                subtitle: Text(
                  'View Profile',
                  style: AppTextStyle.subTextListTile,
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: ColorsCollection.abuTextField,
                      size: 20,
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    title: Text(
                      'Account',
                      style: AppTextStyle.appBarTitleStyle,
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: ColorsCollection.abuTextField,
                          size: 20,
                        )),
                  ),
                  ListTile(
                    title: Text(
                      'Data Server',
                      style: AppTextStyle.appBarTitleStyle,
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: ColorsCollection.abuTextField,
                          size: 20,
                        )),
                  ),
                  ListTile(
                    title: Text(
                      'Languages',
                      style: AppTextStyle.appBarTitleStyle,
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: ColorsCollection.abuTextField,
                          size: 20,
                        )),
                  ),
                  ListTile(
                    title: Text(
                      'Playback',
                      style: AppTextStyle.appBarTitleStyle,
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: ColorsCollection.abuTextField,
                          size: 20,
                        )),
                  ),
                  ListTile(
                    title: Text(
                      'Explicit Content',
                      style: AppTextStyle.appBarTitleStyle,
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: ColorsCollection.abuTextField,
                          size: 20,
                        )),
                  ),
                  ListTile(
                    title: Text(
                      'Devices',
                      style: AppTextStyle.appBarTitleStyle,
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: ColorsCollection.abuTextField,
                          size: 20,
                        )),
                  ),
                  ListTile(
                    title: Text(
                      'Car',
                      style: AppTextStyle.appBarTitleStyle,
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: ColorsCollection.abuTextField,
                          size: 20,
                        )),
                  ),
                  ListTile(
                    title: Text(
                      'Social',
                      style: AppTextStyle.appBarTitleStyle,
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: ColorsCollection.abuTextField,
                          size: 20,
                        )),
                  ),
                  ListTile(
                    title: Text(
                      'Voice Assistant & Apps',
                      style: AppTextStyle.appBarTitleStyle,
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: ColorsCollection.abuTextField,
                          size: 20,
                        )),
                  ),
                  ListTile(
                    title: Text(
                      'Audio Quality',
                      style: AppTextStyle.appBarTitleStyle,
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: ColorsCollection.abuTextField,
                          size: 20,
                        )),
                  ),
                  ListTile(
                    title: Text(
                      'Storage',
                      style: AppTextStyle.appBarTitleStyle,
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: ColorsCollection.abuTextField,
                          size: 20,
                        )),
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
