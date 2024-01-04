
import 'package:flutter/material.dart';
import 'package:spoticok_apk/constants/colors/colors.dart';
import 'package:spoticok_apk/constants/padding/padding.dart';
import 'package:spoticok_apk/constants/textstyle/textstyle.dart';
import 'package:spoticok_apk/view/loginpage/spoticok_choosepodcast.dart';

class ChooseArtist extends StatefulWidget {
  const ChooseArtist({Key? key}) : super(key: key);

  @override
  State<ChooseArtist> createState() => _ChooseArtistState();
}

class _ChooseArtistState extends State<ChooseArtist> {
  List<String> imagePaths = [
    'images/cover_a7x.jpg',
    'images/cover_arcticmonkey.jpg',
    'images/cover_blink182.jpg',
    'images/cover_bmth.jpg',
    'images/cover_edsheeran.jpg',
    'images/cover_greenday.jpg',
    'images/cover_mcr.jpg',
    'images/cover_metallica.jpg',
    'images/cover_muse.jpg',
    'images/cover_oasis.jpg',
    'images/cover_radiohead.jpg',
    'images/cover_sum41.jpg',
    'images/cover_oneokrock.jpg',
    'images/cover_secondhandserenade.jpg',
    'images/cover_30stomars.jpg',
    'images/cover_linkinpark.jpg',
    'images/cover_withconfidence.jpg',
    'images/cover_simpleplan.jpg',
  ];

  final List<String> artist = [
    'Avenged Sevenfold',
    'Arctic Monkey',
    'Blink-182',
    'Bring Me The Horizon',
    'Ed Sheeran',
    'Green Day',
    'My Chemical Romance',
    'Metallica',
    'Muse',
    'Oasis',
    'Radiohead',
    'Sum 41',
    'ONE OK ROCK',
    'Secondhand Serenade',
    "Thirty Seconds to Mars",
    "Linkin Park",
    "With Confidence",
    "Simple Plan",
  ];

  List<String> selectedArtists = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorsCollection.blackGrey,
        title: Text('Choose 3 or more artists you like.',
            style: AppTextStyle.appbarTextStyle),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                ColorsCollection.blackGrey,
                BlendMode.hue,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: ColorsCollection.blackNeutral,
                  backgroundImage: const AssetImage('images/ic_back.png'),
                ),
              )),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
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
                          contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
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
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 0.5,
                  mainAxisSpacing: 35.0,
                ),
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return GridItem(
                    imagePath: imagePaths[index],
                    artistName: artist[index],
                    onSelected: (isSelected) {
                      setState(() {
                        if (isSelected == 1) {
                          if (!selectedArtists.contains(imagePaths[index])) {
                            selectedArtists.add(imagePaths[index]);
                          }
                        } else {
                          selectedArtists.remove(imagePaths[index]);
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Visibility(
        visible: selectedArtists.length >= 3,
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
                    builder: (context) => const ChoosePodcast(),
                  ),
                );
              },
              elevation: 4.0,
              backgroundColor: ColorsCollection.whiteNeutral,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(21.0),
              ),
              child: Text(
                'Next',
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
  final String imagePath;
  final String artistName;
  final Function(int) onSelected;

  const GridItem({super.key, 
    required this.imagePath,
    required this.artistName,
    required this.onSelected,
  });

  @override
  // ignore: library_private_types_in_public_api
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
                  ClipOval(
                    child: Image.asset(
                      widget.imagePath,
                      width: 110.0,
                      height: 110.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Flexible(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Center(
                        child: Text(
                          widget.artistName,
                          style: AppTextStyle.artistNameTextSyle,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              if (isSelected)
                Positioned(
                  top: 5,
                  right: 10,
                  child: Icon(
                    Icons.check_circle,
                    color: ColorsCollection.greenNeutral,
                    size: 20.0,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
