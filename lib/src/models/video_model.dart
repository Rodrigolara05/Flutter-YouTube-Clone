import 'package:youtube_clon/src/models/user_model.dart';

class VideoModel {
  final UserModel userModel;
  final String title;
  final String views;
  final String duration;
  final String time;
  final String previewImageUrl;
  final String videoUrl;

  VideoModel(
      {this.userModel,
      this.title,
      this.views,
      this.duration,
      this.time,
      this.previewImageUrl,
      this.videoUrl});
}

List<VideoModel> listVideos = [
  new VideoModel(
    userModel: listUsers.elementAt(1),
    title: "Flutter UI: Clonando Messenger desde cero || Material Design",
    previewImageUrl: "https://i.ytimg.com/vi/VxZmqwWJv-U/maxresdefault.jpg",
    time: "2 horas",
    duration: "59:09",
    views: "34,000",
    videoUrl:"https://www.youtube.com/watch?v=VxZmqwWJv-U&t=155s",
  ),
  new VideoModel(
    userModel: listUsers.elementAt(0),
    title: "Nuevas tendencias en Arquitectura de Software",
    previewImageUrl: "https://miro.medium.com/max/2078/1*M22DR3WPqbWXWidYIq2GwA.png",
    time: "2 días",
    duration: "30:00",
    views: "4M",
    videoUrl:"",
  ),

  new VideoModel(
    userModel: listUsers.elementAt(2),
    title: "Hasta luego: Me retiro de Microsoft para siempre",
    previewImageUrl: "https://www.mundomarketing.com/wp-content/uploads/2020/03/bill-gates.jpg",
    time: "1 hora",
    duration: "20:00",
    views: "80,500",
    videoUrl:"",
  ),
  new VideoModel(
    userModel: listUsers.elementAt(3),
    title: "La vida de Steve Jobs desde otra perspectiva || Genios del siglo XX",
    previewImageUrl: "https://lamanzanamordida.net/app/uploads-lamanzanamordida.net/2017/07/Steve-Jobs.jpg",
    time: "4 días",
    duration: "35:50",
    views: "9,500",
    videoUrl:"",
  ),
  new VideoModel(
    userModel: listUsers.elementAt(4),
    title: "Elon Musk y sus planes con Tesla y SpaceX en 15 años",
    previewImageUrl: "https://cherry-brightspot.s3.amazonaws.com/b1/80/380ae20d4ba7b07ece8d2e1bed1a/2018-02-07t000424z-329187096-hp1ee27007co4-rtrmadp-3-space-spacex-heavy.JPG",
    time: "1 semana",
    duration: "28:52",
    views: "192,386",
    videoUrl:"",
  ),
 new VideoModel(
    userModel: listUsers.elementAt(7),
    title: "Los 10 motivos por los que Evan Spiegel no vendió Snapchat a Facebook",
    previewImageUrl: "https://cdn.tn.com.ar/sites/default/files/styles/1366x765/public/2018/05/31/evan_spiegel_zuckerberg.jpg",
    time: "4 semanas",
    duration: "15:47",
    views: "16,327",
    videoUrl:"",
  ),
];
