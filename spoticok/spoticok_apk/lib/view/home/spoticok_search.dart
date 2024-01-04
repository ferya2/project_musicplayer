import 'package:flutter/material.dart';
import 'package:spoticok_apk/constants/colors/colors.dart';
import 'package:spoticok_apk/constants/padding/padding.dart';
import 'package:spoticok_apk/constants/textstyle/textstyle.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: ColorsCollection.blackGrey,
      child: SingleChildScrollView(
          child: Padding(
        padding: CustomPadding.k2SidePadding,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      filled: true,
                      fillColor: ColorsCollection.abuTextField2,
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search,
                          color: ColorsCollection.whiteNeutral),
                      hintStyle: AppTextStyle.textSearchTextStyle,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 18),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancel',
                  style: AppTextStyle.textSearchTextStyle,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          Text('Recent searches', style: AppTextStyle.textStylepw),
          const SizedBox(
            height: 10,
          ),
          Column(children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: ColorsCollection.abuTextField,
                radius: 30,
                child: const Icon(
                  Icons.person_2_outlined,
                ),
              ),
              title: Text(
                'FKA twigs',
                style: AppTextStyle.textSearchTextStyle,
              ),
              subtitle: Text('Artists', style: AppTextStyle.subTextListTile),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: ColorsCollection.abuTextField,
                radius: 30,
                child: const Icon(
                  Icons.person_2_outlined,
                ),
              ),
              title: Text(
                'FKA twigs',
                style: AppTextStyle.textSearchTextStyle,
              ),
              subtitle: Text('Artists', style: AppTextStyle.subTextListTile),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: ColorsCollection.abuTextField,
                radius: 30,
                child: const Icon(
                  Icons.person_2_outlined,
                ),
              ),
              title: Text(
                'FKA twigs',
                style: AppTextStyle.textSearchTextStyle,
              ),
              subtitle: Text('Artists', style: AppTextStyle.subTextListTile),
            ),
          ])
        ]),
      )),
    ));
  }
}
