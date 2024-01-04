import 'package:flutter/material.dart';
import 'package:spoticok_apk/constants/colors/colors.dart';
import 'package:spoticok_apk/constants/padding/padding.dart';
import 'package:spoticok_apk/constants/textstyle/textstyle.dart';
import 'package:spoticok_apk/view/home/spoticok_search.dart';

class SearchPageOne extends StatefulWidget {
  const SearchPageOne({super.key});

  @override
  State<SearchPageOne> createState() => _SearchPageOneState();
}

class _SearchPageOneState extends State<SearchPageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: ColorsCollection.blackGrey,
          title: Text(
            'Search',
            style: AppTextStyle.welcomeTextStyle,
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
          ]),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: ColorsCollection.blackGrey,
        child: SingleChildScrollView(
            child: Padding(
          padding: CustomPadding.k2SidePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              TextField(
                readOnly: true,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchPage(),
                      ));
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  filled: true,
                  fillColor: ColorsCollection.whiteNeutral,
                  hintText: 'Artist, songs, or podcast',
                  prefixIcon:
                      Icon(Icons.search, color: ColorsCollection.abuTextField2),
                  hintStyle: AppTextStyle.textSearch2TextStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text('Your Top Genres', style: AppTextStyle.btnsignup2TextStyle),
              const SizedBox(height: 10),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Image(image: AssetImage('images/1-1.png')),
                  SizedBox(width: 10),
                  Image(image: AssetImage('images/1-2.png')),
                ]),
              ),
              const SizedBox(height: 25),
              Text('Popular podcast categories',
                  style: AppTextStyle.btnsignup2TextStyle),
              const SizedBox(height: 10),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Image(image: AssetImage('images/1-3.png')),
                  SizedBox(width: 10),
                  Image(image: AssetImage('images/1-4.png')),
                ]),
              ),
              const SizedBox(height: 25),
              Text('Browse all', style: AppTextStyle.btnsignup2TextStyle),
              const SizedBox(height: 10),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Image(image: AssetImage('images/1-5.png')),
                  SizedBox(width: 10),
                  Image(image: AssetImage('images/1-6.png')),
                ]),
              ),
              const SizedBox(height: 20),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Image(image: AssetImage('images/1-7.png')),
                  SizedBox(width: 10),
                  Image(image: AssetImage('images/1-8.png')),
                ]),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
