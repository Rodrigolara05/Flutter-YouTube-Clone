class UserModel {
  final String username;
  final String avatarUrl;

  UserModel({this.username, this.avatarUrl});
}

List<UserModel> listUsers = [
  new UserModel(
      username: "Rodrigo Lara",
      avatarUrl:
      "https://media-exp1.licdn.com/dms/image/C4E03AQFmcFwqwvJNMA/profile-displayphoto-shrink_200_200/0?e=1586995200&v=beta&t=4cwKRH-KwJGyOVUtu82PjVt9ss35d643fH-T7VFhxLQ"),
  new UserModel(
      username: "Codigo fuente",
      avatarUrl:
      "https://yt3.ggpht.com/a-/AOh14Ggu5Wml45UPksoMVJq2rqctYSp_bLbg3U1zYmoO5g=s288-c-k-c0xffffffff-no-rj-mo"),
  new UserModel(
      username: "Bill Gates",
      avatarUrl:
      "https://pbs.twimg.com/profile_images/988775660163252226/XpgonN0X_400x400.jpg"),
  new UserModel(
      username: "Steve Jobs",
      avatarUrl:
      "https://upload.wikimedia.org/wikipedia/commons/d/dc/Steve_Jobs_Headshot_2010-CROP_%28cropped_2%29.jpg"),
  new UserModel(
      username: "Elon Musk",
      avatarUrl:
      "https://i.insider.com/5df18925fd9db27e786eac82?width=1100&format=jpeg&auto=webp"),
  new UserModel(
      username: "Mark Zuckerberg",
      avatarUrl:
      "https://tentulogo.com/wp-content/uploads/Mark-Zuckerberg.jpg"),
  new UserModel(
      username: "Jeff Bezos",
      avatarUrl:
      "https://cnnespanol2.files.wordpress.com/2019/02/amazon-bezos-enquirer.jpg?quality=100&strip=info&w=1024&h=576"),
  new UserModel(
      username: "Evan Spiegel",
      avatarUrl:
      "https://i.postimg.cc/XNfK0qL9/416x416.jpg"),
];