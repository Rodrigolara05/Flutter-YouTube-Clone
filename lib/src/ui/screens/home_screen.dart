import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_clon/src/ui/pages/explore_page.dart';
import 'package:youtube_clon/src/ui/pages/library_page.dart';
import 'package:youtube_clon/src/ui/pages/principal_page.dart';
import 'package:youtube_clon/src/ui/pages/received_pages.dart';
import 'package:youtube_clon/src/ui/pages/subscriptions_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedIndex = 0;

  _launchURL(urlParameter) async {
    String url = urlParameter.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo ir a $url';
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Pantalla inicial

    Container logoYoutube = new Container(
      height: 19,
      child: Image.asset("lib/src/resources/assets/titleYT.png"),
    );

    Row rowTittle = new Row(
      children: <Widget>[
        logoYoutube,
      ],
      mainAxisAlignment: MainAxisAlignment.start,
    );

    SliverAppBar sliverAppBar = new SliverAppBar(
      title: rowTittle,
      floating: true,
      pinned: false,
      snap: false,
      elevation: 5.0,
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.video_call,
              color: Theme.of(context).primaryIconTheme.color,
            ),
            onPressed: () {}),
        IconButton(
            icon: Icon(Icons.search,
                color: Theme.of(context).primaryIconTheme.color),
            onPressed: () {}),
        IconButton(
          icon: Icon(Icons.account_circle,
              color: Theme.of(context).primaryIconTheme.color),
          onPressed: () {},
        )
      ],
    );

    //Demas pantallas

    List<Widget> listScreens = [
      new PrincipalPage(),
      new ExplorePage(),
      new SubscriptionsPage(),
      new ReceivedPage(),
      new LibraryPage(),
    ];

    Stack stackOtherViews = new Stack(
      children: <Widget>[
        listScreens.elementAt(selectedIndex),
        new Positioned(
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: AppBar(
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: logoYoutube,
                ),
              ],
            ),
            //backgroundColor: Colors.black,
            //No more green
            elevation: 0.0,
            actions: <Widget>[
              IconButton(
                  icon: Icon(
                    FontAwesomeIcons.github,
                  ),
                  onPressed: () {
                    _launchURL("https://www.github.com/RodrigoLara05/");
                  }),
              IconButton(
                  icon: Icon(
                    FontAwesomeIcons.youtube,
                  ),
                  onPressed: () {
                    _launchURL("https://www.youtube.com/CodigoFuente/");
                  }),
              IconButton(
                  icon: Icon(
                    FontAwesomeIcons.linkedin,
                  ),
                  onPressed: () {
                    _launchURL("https://www.linkedin.com/in/RodrigoLara05/");
                  })
            ], //Shadow gone
          ),
        ),
      ],
    );

    BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
      //backgroundColor: Colors.black,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      selectedItemColor: Colors.red,
      unselectedItemColor: Theme.of(context).primaryIconTheme.color,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            title: Text("Principal"),
            icon: Icon(
              Icons.home,
            )),
        BottomNavigationBarItem(
            title: Text("Explorar"),
            icon: Icon(
              FontAwesomeIcons.solidCompass,
            )),
        BottomNavigationBarItem(
            title: Text("Suscripciones"),
            icon: Icon(
              Icons.play_circle_filled,
            )),
        BottomNavigationBarItem(
            title: Text("Recibidos"),
            icon: Icon(
              Icons.email,
            )),
        BottomNavigationBarItem(
            title: Text("Biblioteca"),
            icon: Icon(
              Icons.video_library,
            )),
      ],
      currentIndex: selectedIndex,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
    );

    PreferredSize preferredSize = new PreferredSize(
      preferredSize: Size.fromHeight(40.0),
      child: bottomNavigationBar,
    );

    Scaffold scaffold = new Scaffold(
      body: selectedIndex == 0
          ? CustomScrollView(
              slivers: <Widget>[sliverAppBar, PrincipalPage()],
            )
          : stackOtherViews,
      bottomNavigationBar: bottomNavigationBar,
    );

    return scaffold;
  }
}
