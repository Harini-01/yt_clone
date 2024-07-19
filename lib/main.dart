import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Youtube',
        theme: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            primaryColorLight: const Color.fromARGB(255, 255, 255, 255),
            primaryColorDark: const Color.fromARGB(
              255,
              0,
              0,
              0,
            ),
            scaffoldBackgroundColor: Colors.white),
        home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class First_Page extends StatefulWidget {
  const First_Page({super.key});

  @override
  State<First_Page> createState() => _First_PageState();
}

class _First_PageState extends State<First_Page> {
  @override
  Widget build(BuildContext context) {
    List<String> cat = [
      "Movies",
      "Web Series",
      "News",
      "Live",
      "AI",
      "Cricket",
      "Recently Uploaded"
    ];
    return Scaffold(
        appBar: AppBar(
          //Inside title, two widgets has to be added. 1.image and 2.text
          //So using container -> row -> widget list

          title: Container(
              child: Row(children: <Widget>[
            SvgPicture.asset(
              'images/yt_logo.svg',
              semanticsLabel: 'My SVG Image',
              height: 35,
              width: 35,
            ),
          ])),

          //Other than title, 3 buttons are added in appbar
          //using a widget list
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Image.asset('images/connect_device.png',
                  height: 25, width: 25),
              tooltip: 'Connect to device',
              color: Colors.black,
            ), //Connect to devices button

            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                size: 30,
              ),
              tooltip: 'Notifications',
              color: Colors.black,
            ), //Notifications button

            IconButton(
              onPressed: () {
                //When search bar is pressed
                showSearch(context: context, delegate: CustomSearchDelegate());
              },
              icon: const Icon(
                Icons.search,
                size: 30,
              ),
              tooltip: 'Search',
              color: Colors.black,
            ) //Search button
          ],
          //bg color of appbar
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //Creating the horizontal list view for categories
            Container(
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 7,
                    itemBuilder: (BuildContext context, int index) {
                      //Using "container" rather than "listtile", because it is a horizontal list
                      return Container(
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.all(7.0),
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color.fromRGBO(235, 234, 234, 0.872),
                        ),
                        child: Text(
                          " ${cat[index]}",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      );
                    })),

                    //Adding a listbuilder for displaying thumbnails
                    
          ],
        ));
  }
}

// ignore: camel_case_types

class ShortsPage extends StatelessWidget {
  const ShortsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: const Center(
      child: Text("ShortsPage"),
    ));
  }
}

class CreatePage extends StatelessWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: const Center(
      child: Text("CreatePage"),
    ));
  }
}

class SubscriptionsPage extends StatefulWidget {
  const SubscriptionsPage({super.key});

  @override
  State<SubscriptionsPage> createState() => _SubscriptionsPageState();
}

class _SubscriptionsPageState extends State<SubscriptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: avoid_unnecessary_containers
        //Inside title, two widgets has to be added. 1.image and 2.text
        //So using container -> row -> widget list
        title: Container(
            child: Row(children: <Widget>[
          Image.asset(
            "images/yt_logo.png",
            height: 45,
            width: 45,
          ),
          const Text(
            " YouTube",
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontWeight: FontWeight.bold,
                fontSize: 40),
          )
        ])),

        //Other than title, 3 buttons are added in appbar
        //using a widget list
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon:
                Image.asset('images/connect_device.png', height: 20, width: 20),
            tooltip: 'Connect to device',
            color: Colors.black,
          ), //Connect to devices button

          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
            tooltip: 'Notifications',
            color: Colors.black,
          ), //Notifications button

          IconButton(
            onPressed: () {
              //When search bar is pressed
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
            icon: const Icon(Icons.search),
            tooltip: 'Search',
            color: Colors.black,
          ) //Search button
        ],
        //bg color of appbar
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      body: Container(
          height: 100,
          color: const Color.fromRGBO(255, 255, 255, 1),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                  width: 75,
                  height: 75,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(48),
                      child: Image.asset('images/freecodecamp_logo.png'),
                    ),
                  )),
              Container(
                  width: 75,
                  height: 75,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(48),
                      child: Image.asset('images/mkbhd_logo.jpg'),
                    ),
                  )),
              Container(
                  width: 75,
                  height: 75,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(48),
                      child: Image.asset('images/Mr-Beast-Logo.png'),
                    ),
                  )),
              Container(
                  width: 75,
                  height: 75,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(48),
                      child: Image.asset('images/Tesla_logo.png'),
                    ),
                  )),
              Container(
                  width: 75,
                  height: 75,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(48),
                      child: Image.asset('images/3blue1brown_logo.png'),
                    ),
                  )),
              Container(
                  width: 75,
                  height: 75,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(48),
                      child: Image.asset('images/mkbhd_logo.jpg'),
                    ),
                  )),
              Container(
                  width: 75,
                  height: 75,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(48),
                      child: Image.asset('images/Mr-Beast-Logo.png'),
                    ),
                  )),
              Container(
                  width: 75,
                  height: 75,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(48),
                      child: Image.asset('images/Tesla_logo.png'),
                    ),
                  )),
              Container(
                width: 75,
                height: 75,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/freecodecamp_logo.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle),
              ),
            ],
          )),
    );
  }
}

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon:
                Image.asset('images/connect_device.png', height: 25, width: 25),
            tooltip: 'Connect to device',
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              size: 30,
            ),
            tooltip: 'Notifications',
          ),
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
            tooltip: 'Search',
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              size: 30,
            ),
            tooltip: 'Settings',
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}

class HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const First_Page(),
    const ShortsPage(),
    const CreatePage(),
    const SubscriptionsPage(),
    const LibraryPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 75,
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //Home button
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        pageIndex = 0;
                      });
                    },
                    icon: const Icon(
                      Icons.home,
                      size: 30,
                      color: Colors.black,
                    )),
                const Text(
                  'Home',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),

            //Shorts button
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  icon: Image.asset('images/yt_shorts.png',
                      height: 25, width: 25),
                ),
                const Text("Shorts")
              ],
            ),

            //Create button
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        pageIndex = 2;
                      });
                    },
                    icon: const Icon(
                      Icons.add_rounded,
                      color: Colors.black,
                      size: 50,
                    )),
              ],
            ),

            //Subscriptions button
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        pageIndex = 3;
                      });
                    },
                    icon: const Icon(
                      Icons.format_list_bulleted_outlined,
                      color: Colors.black,
                      size: 30,
                    )),
                const Text('Subscriptions')
              ],
            ),

            //Library button
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      pageIndex = 4;
                    });
                  },
                  icon: Image.asset('images/yt_library.png',
                      height: 25, width: 25),
                ),
                const Text("Library")
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = ['MrBeast', 'MKBHD', 'OpenAI', 'Apple'];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear, color: Color.fromARGB(255, 0, 0, 0)),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(
        Icons.arrow_back,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    List<String> matchQuery = [];
    for (var video in searchTerms) {
      if (video.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(video);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    List<String> matchQuery = [];
    for (var video in searchTerms) {
      if (video.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(video);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}
