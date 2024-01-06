import 'dart:math';

import 'package:flutter/material.dart';
import 'package:spoticok_apk/constants/bottomnav/bottomnav.dart';
import 'package:spoticok_apk/constants/colors/colors.dart';
import 'package:spoticok_apk/constants/padding/padding.dart';
import 'package:spoticok_apk/constants/textstyle/textstyle.dart';

class ChoosePodcast extends StatefulWidget {
  const ChoosePodcast({Key? key}) : super(key: key);

  @override
  State<ChoosePodcast> createState() => _ChoosePodcastState();
}

class _ChoosePodcastState extends State<ChoosePodcast> {
  List<String> imagePaths = [
    'images/pod_rintik_sedu.jpg',
    'images/pod_lentera_malam.jpg',
    'images/pod_hanan_attaki.jpg',
    'images/pod_kita_dan_waktu.jpg',
    'images/pod_malam_kliwon.jpg',
    'images/pod_podkesmas.jpg',
    'images/pod_self_dev.jpg',
    'images/pod_mishary_rashid_alafasy.jpg',
    'images/pod_did_u_see_what_i_see.jpg',
    'images/pod_pendakian_horror.jpg',
    'images/pod_pord.jpg',
    'images/pod_gjls.jpg',
  ];

  List<String> podcastTitles = [
    "Rintik Sedu",
    "Lentera Malam",
    "Hanan Attaki",
    "Kita dan Waktu",
    "Malam Kliwon",
    "Podkesmas",
    "Pengembangan Diri",
    "Mishary Rashid Alafasy",
    "Did U See What I See?",
    "Besok Pagi (Podcast Pendakian Horror)",
    "Podcast Raditya Dika",
    "GJLS",
  ];

  List<Color> pastelColors = [];

  Color generatePastelColor() {
    Random random = Random();
    int r = 64 + random.nextInt(64);
    int g = 64 + random.nextInt(64);
    int b = 64 + random.nextInt(64);
    return Color.fromARGB(255, r, g, b);
  }

  List<int> selectedPodcasts = [];

  @override
  void initState() {
    super.initState();
    // Generate pastel colors for each item
    for (int i = 0; i < imagePaths.length; i++) {
      pastelColors.add(generatePastelColor());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: ColorsCollection.blackGrey,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(
                child: Padding(
                  padding: CustomPadding.sidePadding,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 26.0),
                      Text(
                        'Now choose some\npodcasts.',
                        style: AppTextStyle.h1PodcastTextSyle,
                      ),
                      const SizedBox(height: 4.0),
                      SizedBox(
                        height: 43,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: AppTextStyle.searchTextSyle,
                            fillColor: ColorsCollection.reqs4CreateBtn,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                width: 0.5,
                              ),
                            ),
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 12.0),
                            prefixIcon: const Icon(
                              Icons.search,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 26.0),
              Expanded(
                child: Container(
                  color: ColorsCollection.blackGrey,
                  child: Padding(
                    padding: CustomPadding.k2SidePadding,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 8.0,
                        childAspectRatio: 0.7,
                      ),
                      itemCount: imagePaths.length,
                      itemBuilder: (context, index) {
                        bool isSelected = selectedPodcasts.contains(index);
                        bool isOutlineVisible = !((index + 1) % 3 == 0);
                        Color buttonColor = pastelColors[index];


                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              if (isSelected) {
                                selectedPodcasts.remove(index);
                              } else {
                                selectedPodcasts.add(index);
                              }
                            });
                          },
                          child: Container(
                            child: Column(
                              children: [
                                if (isOutlineVisible)
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: isSelected
                                            ? Colors.green
                                            : Colors.transparent,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        imagePaths[index],
                                        height: MediaQuery.of(context)
                                                .size
                                                .width /
                                            4 *
                                            1.13,
                                        width: MediaQuery.of(context)
                                                .size
                                                .width /
                                            4 *
                                            1.13,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )
                                else
                                  ElevatedButton(
                                    onPressed: () {
                                      // Handle button click
                                    },
                                    style: ButtonStyle(
                                      fixedSize: MaterialStateProperty.all(
                                        Size(
                                          MediaQuery.of(context).size.width /
                                              4 *
                                              1.13,
                                          MediaQuery.of(context).size.width /
                                              4 *
                                              1.13,
                                        ),
                                      ),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all(buttonColor),
                                    ),
                                    child: Text(
                                      'More Podcast',
                                      style:
                                          AppTextStyle.podcastNameTextSyle,
                                    ),
                                  ),
                                const SizedBox(height: 8.0),
                                Text(
                                  isOutlineVisible
                                      ? podcastTitles[index]
                                      : '   ',
                                  style: AppTextStyle.podcastNameTextSyle,
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Visibility(
        visible: selectedPodcasts.isNotEmpty,
        child: Container(
          margin: const EdgeInsets.only(bottom: 60.0),
          child: SizedBox(
            height: 42,
            width: 82,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BottomNavBar(),
                  ),
                );
              },
              elevation: 4.0,
              backgroundColor: ColorsCollection.whiteNeutral,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(21.0),
              ),
              child: Text(
                'Done',
                style: AppTextStyle.btnCreateAccTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
