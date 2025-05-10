import 'package:e4u/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:draggable_home/draggable_home.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<ScrollController> _scrollControllers =
  List.generate(3, (index) => ScrollController());

  final List<Map<String, String>> heardInShorts = [
    {
      "title": "I Think They Call This Love",
      "artist": "Elliot James Reay",
      "plays": "9 crore plays",
      "image": ImageConstants.testImage,
    },
    {
      "title": "I Think They Call This Love (Cover)",
      "artist": "Matthew Ifield",
      "plays": "2.4 crore plays",
      "image": ImageConstants.testImage,
    },
    {
      "title": "Starboy (feat. Daft Punk)",
      "artist": "The Weeknd",
      "plays": "358 crore plays",
      "image": ImageConstants.testImage,
    },
    {
      "title": "Aasa Kooda (From 'Think Indie')",
      "artist": "Sai Abhyankkar & Sai Smriti",
      "plays": "29 crore plays",
      "image": ImageConstants.testImage,
    },
    {
      "title": "I Think They Call This Love",
      "artist": "Elliot James Reay",
      "plays": "9 crore plays",
      "image": ImageConstants.testImage,
    },
    {
      "title": "I Think They Call This Love (Cover)",
      "artist": "Matthew Ifield",
      "plays": "2.4 crore plays",
      "image": ImageConstants.testImage,
    },
    {
      "title": "Starboy (feat. Daft Punk)",
      "artist": "The Weeknd",
      "plays": "358 crore plays",
      "image": ImageConstants.testImage,
    },
    {
      "title": "Aasa Kooda (From 'Think Indie')",
      "artist": "Sai Abhyankkar & Sai Smriti",
      "plays": "29 crore plays",
      "image": ImageConstants.testImage,
    },
  ];

  @override
  void dispose() {
    for (var controller in _scrollControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.orange.shade900,
                  Colors.green.shade400,
                  Colors.black,
                ],
              ),
            ),
          ),

          // Background Image with Opacity (Shifted to the Left)
          Positioned(
            left: 0, // Shift image towards the left
            right: -50,
            top: 5,
            bottom: 0,
            child: Opacity(
              opacity: 0.3,
              child: Image.asset(
                ImageConstants.konark_image, // Your background image
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Main Content (DraggableHome)
          DraggableHome(
            leading: SizedBox.shrink(),
            title: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "E4U",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.notifications_outlined, color: Colors.grey.shade200),
                    SizedBox(width: 15),
                    Icon(Icons.search, color: Colors.grey.shade200),
                    SizedBox(width: 15),
                    Icon(Icons.person_outline, color: Colors.grey.shade200),
                  ],
                ),
              )
            ],
            headerWidget: headerWidget(),
            body: [
              trendingActorsSection(), // Trending Actors Section
              categorySection("Trending Now", 0),
              popularHitsSection(context),
              categorySection("Top Playlists", 1),
              categorySection("Recommended for You", 2),
            ],
            fullyStretchable: false,
            backgroundColor: Colors.transparent,
            appBarColor: Colors.orange,
          ),
        ],
      ),
    );
  }

// Trending Actors Section
  Widget trendingActorsSection() {
    final List<Map<String, String>> trendingActors = [
      {
        "name": "Babushan Mohanty",
        "followers": "627K Followers",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP2qiN73BKJloakddj4XXsqZEj6ccO0vBzyg&s",
      },
      {
        "name": "Anubhav Mohanty",
        "followers": "462K Followers",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNd9boCGox7BuFs-ugm3JV81gNypM01hfdKg&s",
      },
      {
        "name": "Sailendra Samantaray",
        "followers": "532K Followers",
        "image": "https://yt3.googleusercontent.com/uLzZOZqF18mew0gLM0umiB2dS3nqTtwp8STeYGvupboqvL8Mve_A3pVOZdAr2JH_dYs4Q6FE=s900-c-k-c0x00ffffff-no-rj",
      },
      {
        "name": "Bhoomika Dash",
        "followers": "873K Followers",
        "image": "https://in.bmscdn.com/iedb/artist/images/website/poster/large/bhoomika-dash-1086349-1687956150.jpg",
      },
      {
        "name": "Humane Sagar",
        "followers": "136K Followers",
        "image": "https://images.tpointtech.com/biography/images/human-sagar.png",
      },
      {
        "name": "Asima Panda",
        "followers": "440K Followers",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEUIIo1dqOmci2y37pFfXG-W-wiNA-bKnqcQ&s",
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15, top: 15, bottom: 10),
          child: Text(
            "Trending Artists",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 15, right: 5),
            itemCount: trendingActors.length,
            itemBuilder: (context, index) {
              final actor = trendingActors[index];

              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white38, width: 2),
                    ),
                    child: ClipOval(
                      child: Image.network(
                        actor["image"]!,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    actor["name"]!,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    actor["followers"]!,
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }




  Widget headerWidget() {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.only(top: 150),
      child: Center(
        child: Column(
          children: [
            Text(
              "Your Entertainment Hub!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 5),
            Text(
              "Welcome, User!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget categorySection(String title, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        categoryTitle(title),
        horizontalListView(index),
      ],
    );
  }

  Widget categoryTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget horizontalListView(int index) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        controller: _scrollControllers[index],
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 15, right: 5),
        itemCount: 6,
        itemBuilder: (context, i) {
          return musicCard(
            imageUrl: ImageConstants.testImage,
            title: "Playlist $i",
            subtitle: "Top Hits",
          );
        },
      ),
    );
  }

  Widget musicCard(
      {required String imageUrl, required String title, required String subtitle}) {
    return Container(
      width: 140,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imageUrl,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 2),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget popularHitsSection(BuildContext context) {
    final PageController pageController = PageController(viewportFraction: 0.91);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        categoryTitle("Popular Hits"),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.37,
          child: PageView.builder(
            controller: pageController,
            scrollDirection: Axis.horizontal,
            itemCount: (heardInShorts.length / 4).ceil(),
            itemBuilder: (context, slideIndex) {
              final int startIndex = slideIndex * 4;
              final int endIndex = (startIndex + 4).clamp(0, heardInShorts.length);
              final List<Map<String, String>> slideSongs = heardInShorts.sublist(startIndex, endIndex);

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.91,
                  child: Column(
                    children: slideSongs.map((song) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              song["image"]!,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text(
                            song["title"]!,
                            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Text(
                            "${song["artist"]} • ${song["plays"]}",
                            style: TextStyle(color: Colors.grey.shade200),
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: const Icon(Icons.more_vert, color: Colors.white),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
