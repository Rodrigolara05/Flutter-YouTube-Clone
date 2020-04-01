import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_clon/src/models/user_model.dart';
import 'package:youtube_clon/src/models/video_model.dart';

class PrincipalPage extends StatefulWidget {
  PrincipalPageState createState() => new PrincipalPageState();
}

class PrincipalPageState extends State<PrincipalPage> {

  _launchURL(urlParameter) async {
    String url = urlParameter.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo ir a $url';
    }
  }

  @override
  Widget build(BuildContext context) {

    SliverList sliverList = new SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return GestureDetector(
            onTap: () {
              _launchURL(listVideos.elementAt(index).videoUrl);
            },
            child: Column(
              children: <Widget>[
                Container(
                  height: 200,
                  child: Stack(
                    fit: StackFit.expand, // Para expandir la imagen por
                    children: [
                      Image.network(
                        listVideos.elementAt(index).previewImageUrl,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 7,
                        right: 7,
                        child: Container(
                          width: 35,
                          height: 15,
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                          child: Center(
                            child: Text(
                              listVideos.elementAt(index).duration,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Theme.of(context).primaryColor,
                  child: new ListTile(
                    leading: new Container(
                      //color: Colors.red,
                      child: new CircleAvatar(
                        radius: 20.0,
                        foregroundColor: Theme.of(context).primaryColor,
                        backgroundColor: Colors.grey,
                        backgroundImage: new NetworkImage(
                            listVideos.elementAt(index).userModel.avatarUrl),
                      ),
                    ),
                    title: new Container(
                      //color: Colors.red,
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                  text: listVideos.elementAt(index).title,
                                  style:
                                      Theme.of(context).primaryTextTheme.title),
                              overflow: TextOverflow.clip,
                            ),
                          ),
                          Icon(
                            Icons.more_vert,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    subtitle: new Container(
                      //color: Colors.red,
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              text: listVideos
                                  .elementAt(index)
                                  .userModel
                                  .username,
                              style:
                                  Theme.of(context).primaryTextTheme.subtitle,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          RichText(
                            text: TextSpan(
                              text: " · " +
                                  listVideos.elementAt(index).views +
                                  " vistas",
                              style:
                                  Theme.of(context).primaryTextTheme.subtitle,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          RichText(
                            text: TextSpan(
                              text:
                                  " · Hace " + listVideos.elementAt(index).time,
                              style:
                                  Theme.of(context).primaryTextTheme.subtitle,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                  height: 10,
                ),
              ],
            ),
          );
        },
        childCount: listVideos.length,
      ),
    );
    return sliverList;
  }
}
