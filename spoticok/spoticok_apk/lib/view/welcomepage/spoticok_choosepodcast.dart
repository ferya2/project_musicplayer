import 'package:flutter/material.dart';
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

  List<String> selectedPodcasts = [];

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
                  padding: CustomPadding.SidePadding,
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
                                EdgeInsets.symmetric(vertical: 12.0),
                            prefixIcon: Icon(
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
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 0.5,
                    mainAxisSpacing: 35.0,
                  ),
                  itemCount: imagePaths.length,
                  itemBuilder: (context, index) {
                    return GridItem(
                      imagePath2: imagePaths[index],
                      podcastName: podcastTitles[index],
                      onSelected: (isSelected) {
                        setState(() {
                          if (isSelected == 1) {
                            if (!selectedPodcasts.contains(imagePaths[index])) {
                              selectedPodcasts.add(imagePaths[index]);
                            }
                          } else {
                            selectedPodcasts.remove(imagePaths[index]);
                          }
                        });
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Visibility(
        visible: selectedPodcasts.length >= 1,
        child: Container(
          margin: EdgeInsets.only(bottom: 60.0),
          child: SizedBox(
            height: 42,
            width: 82,
            child: FloatingActionButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const ChoosePodcast(),
                //   ),
                // );
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

class GridItem extends StatefulWidget {
  final String imagePath2;
  final String podcastName;
  final Function(int) onSelected;

  GridItem({
    required this.imagePath2,
    required this.podcastName,
    required this.onSelected,
  });

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.8,
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        child: InkWell(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });

            widget.onSelected(isSelected ? 1 : -1);
          },
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: isSelected ? ColorsCollection.reqs4TextGr : ColorsCollection.transparent,
                        width: 2.0,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        widget.imagePath2,
                        width: 110.0,
                        height: 110.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Center(
                        child: Text(
                          widget.podcastName,
                          style: AppTextStyle.podcastNameTextSyle.copyWith(
                            color: isSelected
                                ? ColorsCollection.reqs4TextGr
                                : AppTextStyle.podcastNameTextSyle.color,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // if (isSelected)
              //   Positioned(
              //     top: 5,
              //     right: 10,
              //     child: Icon(
              //       Icons.check_circle,
              //       color: Colors.green,
              //       size: 20.0,
              //     ),
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
