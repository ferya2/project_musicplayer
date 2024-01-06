import 'package:flutter/material.dart';
import 'package:spoticok_apk/constants/bottomsheet/bottomsheetsongmore.dart';
import 'package:spoticok_apk/constants/colors/colors.dart';
import 'package:spoticok_apk/constants/padding/padding.dart';
import 'package:spoticok_apk/constants/textstyle/textstyle.dart';
import 'package:spoticok_apk/view/home/spoticok_library.dart';

class YourLibraryPage extends StatefulWidget {
  const YourLibraryPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _YourLibraryPageState createState() => _YourLibraryPageState();
}

class ListItem {
  String type;
  String leadingImage;
  String title;
  String subtitle;
  bool pinned;

  ListItem({
    required this.type,
    required this.leadingImage,
    required this.title,
    required this.subtitle,
    this.pinned = false,
  });
}

class _YourLibraryPageState extends State<YourLibraryPage> {
  bool isAlphabeticallySorted = false;
  bool isRecentlyPlayedSorted = false;
  bool isGridLayout = false;
  String sortText = 'Recents';

  List<String> songsImageUrl = ['images/les.jpg'];
  List<String> songsTitle = ["Les"];
  List<String> songsArtist = ["Childish Gambino"];

  List<String> artistImageUrl = [
    'images/lolozouai.png',
    'images/lanadelray.png',
    'images/marvingaye.png'
  ];
  List<String> artistNames = ["Lolo Zouaï", "Lana Del Rey", "Marvin Gaye"];

  List<String> playlistImageUrl = ['images/frontleft.png'];
  List<String> playlistNames = ["Front Left"];

  List<String> likedSongsImageUrl = ['images/liked_songs.png'];
  List<String> likedSongsTitle = ["Liked Songs"];

  List<String> newEpisodeImageUrl = ['images/new_episodes.png'];
  List<String> newEpisodeTitle = ["New Episodes"];

  List<ListItem> items = [];

  @override
  void initState() {
    super.initState();
    _generateListItems();
  }

  void _generateListItems() {
    for (int i = 0; i < playlistNames.length; i++) {
      items.add(ListItem(
        type: 'Playlist',
        leadingImage: playlistImageUrl[i],
        title: playlistNames[i],
        subtitle: 'Playlist • Spoticok',
      ));
    }

    for (int i = 0; i < artistNames.length; i++) {
      items.add(ListItem(
        type: 'Artist',
        leadingImage: artistImageUrl[i],
        title: artistNames[i],
        subtitle: 'Artist',
      ));
    }

    for (int i = 0; i < songsTitle.length; i++) {
      items.add(ListItem(
        type: 'Song',
        leadingImage: songsImageUrl[i],
        title: songsTitle[i],
        subtitle: 'Song • ${songsArtist[i]}',
      ));
    }

    for (int i = 0; i < likedSongsTitle.length; i++) {
      items.add(ListItem(
        type: 'Liked song',
        leadingImage: likedSongsImageUrl[i],
        title: likedSongsTitle[i],
        subtitle: 'Playlist • 58 songs',
      ));
    }

    for (int i = 0; i < newEpisodeTitle.length; i++) {
      items.add(ListItem(
        type: 'New episode',
        leadingImage: newEpisodeImageUrl[i],
        title: newEpisodeTitle[i],
        subtitle: 'Updated 2 days ago',
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: ColorsCollection.blackGrey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: ListTile(
                  leading: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LibraryPage()));
                    },
                    child: CircleAvatar(
                      backgroundColor: ColorsCollection.whiteNeutral,
                      radius: 18,
                      child: const Image(image: AssetImage('images/orang.png')),
                    ),
                  ),
                  title: Text(
                    'Your Library',
                    style: AppTextStyle.urLibTextStyle,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.more_horiz,
                        color: ColorsCollection.abuTextField,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              elevation: 15.0,
                              builder: (BuildContext context) {
                                return BottomSheetSongMore(
                                    height: MediaQuery.of(context).size.height);
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: ColorsCollection.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(21),
                              side: BorderSide(
                                color: ColorsCollection.checkMarkOutline,
                              ),
                            ),
                          ),
                          child: Text(
                            'Playlists',
                            style: AppTextStyle.artistNameTextSyle,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: ColorsCollection.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(21),
                                  side: BorderSide(
                                      color:
                                          ColorsCollection.checkMarkOutline))),
                          child: Text(
                            'Artists',
                            style: AppTextStyle.artistNameTextSyle,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: ColorsCollection.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(21),
                                  side: BorderSide(
                                      color:
                                          ColorsCollection.checkMarkOutline))),
                          child: Text(
                            'Albums',
                            style: AppTextStyle.artistNameTextSyle,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: ColorsCollection.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(21),
                                  side: BorderSide(
                                      color:
                                          ColorsCollection.checkMarkOutline))),
                          child: Text(
                            'Podcasts & Shows',
                            style: AppTextStyle.artistNameTextSyle,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: CustomPadding.k2SidePadding,
                child: Row(
                  children: [
                    Image.asset(
                      'images/ic_sort.png',
                      width: 10.0,
                      height: 10.0,
                      color: ColorsCollection.whiteNeutral,
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    GestureDetector(
                      child: InkWell(
                        onTap: () => _showSortBottomSheet(),
                        child: Text(
                          sortText,
                          style: AppTextStyle.reqs4TextSyle,
                        ),
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () => _toggleLayout(),
                      child: Image.asset(
                        'images/ic_row.png',
                        width: 15.0,
                        height: 15.0,
                        color: ColorsCollection.whiteNeutral,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Flexible(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: isGridLayout ? _buildGrid() : _buildReorderableList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLeadingWidget(ListItem item, bool isGrid, containerWidth) {
    double imageSize = isGrid ? containerWidth * 1.16 : 56.0;

    if (item.type == 'Playlist' ||
        item.type == 'Liked song' ||
        item.type == 'New episode' ||
        item.type == 'Song') {
      return ClipRRect(
        child: Image.asset(
          item.leadingImage,
          width: imageSize,
          height: imageSize,
          fit: BoxFit.cover,
        ),
      );
    } else if (item.type == 'Artist') {
      return CircleAvatar(
        backgroundImage: AssetImage(item.leadingImage),
        radius: isGrid ? containerWidth * 0.585 : 28.0,
      );
    } else {
      return Container();
    }
  }

  Widget _buildReorderableList() {
    double containerWidth = MediaQuery.of(context).size.width * 0.8;
    return ReorderableListView(
      onReorder: (int oldIndex, int newIndex) {
        setState(() {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          final ListItem item = items.removeAt(oldIndex);
          items.insert(newIndex, item);
        });
      },
      children: [
        for (final item in items)
          ListTile(
            key: Key(item.title),
            leading: _buildLeadingWidget(item, false, containerWidth),
            title: Text(
              item.title,
              style: AppTextStyle.urLibChildTextStyle,
            ),
            subtitle: Row(
              children: [
                if (item.pinned)
                  Icon(
                    Icons.push_pin,
                    color: ColorsCollection.greenSpot,
                    size: 16,
                  ),
                if (item.type == 'Playlist' ||
                    item.type == 'Artist' ||
                    item.type == 'Song' ||
                    item.type == 'Liked song' ||
                    item.type == 'New episode') ...[
                  Text(
                    item.subtitle,
                    style: AppTextStyle.subTextListTile,
                  ),
                ],
              ],
            ),
            onLongPress: () {
              _showBottomSheet(item);
            },
          ),
      ],
    );
  }

  Widget _buildGrid() {
    double containerWidth = MediaQuery.of(context).size.width / 4;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SingleChildScrollView(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 1.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.65,
          ),
          itemCount: items.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () => _showBottomSheet(item),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.grey, width: 1.0),
                  // ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildLeadingWidget(item, true, containerWidth),
                      const SizedBox(height: 4.0),
                      Text(
                        item.title,
                        style: AppTextStyle.urLibChildTextStyle,
                      ),
                      const SizedBox(height: 0.0),
                      Row(
                        children: [
                          if (item.pinned)
                            Icon(
                              Icons.push_pin,
                              color: ColorsCollection.greenSpot,
                              size: 14,
                            ),
                          Text(
                            item.subtitle,
                            style: AppTextStyle.subTextGrid,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _showBottomSheet(ListItem item) {
    double containerWidth = MediaQuery.of(context).size.width / 4;
    showModalBottomSheet(
      context: context,
      elevation: 15.0,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            color: ColorsCollection.blackGrey,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
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
              const SizedBox(height: 24.0),
              ListTile(
                leading: _buildLeadingWidget(item, false, containerWidth),
                title: Text(
                  item.title,
                  style: AppTextStyle.urLibChildTextStyle,
                ),
              ),
              const SizedBox(height: 64.0),
              Divider(
                color: ColorsCollection.greyNeutral,
              ),
              ListTile(
                leading: const Icon(Icons.download),
                iconColor: ColorsCollection.whiteNeutral,
                title: Text(
                  'Download',
                  style: AppTextStyle.urLibChildBotTextStyle,
                ),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {});
                },
              ),
              ListTile(
                leading: Icon(
                  item.pinned ? Icons.push_pin_outlined : Icons.push_pin,
                  color: ColorsCollection.greenSpot,
                ),
                title: Text(
                  item.pinned ? 'Unpin ${item.type}' : 'Pin ${item.type}',
                  style: AppTextStyle.urLibChildBotTextStyle,
                ),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    item.pinned = !item.pinned;

                    if (isAlphabeticallySorted) {
                      items.sort((a, b) => a.title.compareTo(b.title));
                    }
                    if (item.pinned) {
                      items.remove(item);
                      items.insert(0, item);
                    } else {
                      final pinnedItems = items.where((i) => i.pinned).toList();
                      final unpinnedItems =
                          items.where((i) => !i.pinned).toList();
                      items = [];
                      items.addAll(pinnedItems);
                      items.addAll(unpinnedItems);
                    }
                  });
                },
              ),
              if (item.type != 'Liked song' &&
                  item.type != 'New episode' &&
                  item.type != 'Artist' &&
                  item.type != 'Song')
                ListTile(
                  leading: const Icon(Icons.close),
                  iconColor: ColorsCollection.whiteNeutral,
                  title: Text(
                    'Delete ${item.type}',
                    style: AppTextStyle.urLibChildBotTextStyle,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    setState(() {
                      items.remove(item);
                    });
                  },
                ),
              if (item.type != 'Liked song' &&
                  item.type != 'New episode' &&
                  item.type != 'Artist' &&
                  item.type != 'Playlist')
                ListTile(
                  leading: const Icon(Icons.close),
                  iconColor: ColorsCollection.whiteNeutral,
                  title: Text(
                    'Remove ${item.type}',
                    style: AppTextStyle.urLibChildBotTextStyle,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    setState(() {
                      items.remove(item);
                    });
                  },
                ),
              if (item.type != 'Liked song' &&
                  item.type != 'New episode' &&
                  item.type != 'Song' &&
                  item.type != 'Playlist')
                ListTile(
                  leading: const Icon(Icons.close),
                  iconColor: ColorsCollection.whiteNeutral,
                  title: Text(
                    'Stop Following',
                    style: AppTextStyle.urLibChildBotTextStyle,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    setState(() {
                      items.remove(item);
                    });
                  },
                ),
            ],
          ),
        );
      },
    );
  }

  void _showSortBottomSheet() {
    showModalBottomSheet(
      context: context,
      elevation: 15.0,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            color: ColorsCollection.blackGrey,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
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
              const SizedBox(
                height: 25.0,
              ),
              Center(
                child: Text(
                  'Sort By',
                  style: AppTextStyle.urLibChildTextStyle,
                ),
              ),
              Divider(
                color: ColorsCollection.greyNeutral,
              ),
              ListTile(
                title: Text(
                  'Alphabetical',
                  style: AppTextStyle.urLibChildBotTextStyle,
                ),
                onTap: () {
                  _sortItems('alphabetical');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  'Recents',
                  style: AppTextStyle.urLibChildBotTextStyle,
                ),
                onTap: () {
                  _sortItems('recents');
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _sortItems(String sortBy) {
    setState(() {
      if (sortBy == 'alphabetical') {
        items.sort((a, b) => a.title.compareTo(b.title));
        isRecentlyPlayedSorted = false;
        sortText = 'Alphabetical';
      } else if (sortBy == 'recents') {
        items = [];
        _generateListItems();
        isRecentlyPlayedSorted = true;
        sortText = 'Recents';
      }

      final pinnedItems = items.where((i) => i.pinned).toList();
      final unpinnedItems = items.where((i) => !i.pinned).toList();
      items = [];
      items.addAll(pinnedItems);
      items.addAll(unpinnedItems);
    });
  }

  void _toggleLayout() {
    setState(() {
      isGridLayout = !isGridLayout;
    });
  }
}
