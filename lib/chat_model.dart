class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name, this.message, this.time, this.avatarUrl});
}

List<ChatModel> dummyData = [
  new ChatModel(
      name: "John Paul",
      message: "Hey John, You are so amazing !",
      time: "15:30",
      avatarUrl:
          "https://img2.thejournal.ie/inline/2470754/original/?width=428&version=2470754"),
  new ChatModel(
      name: "Harvey Spectre",
      message: "Hey!",
      time: "17:30",
      avatarUrl:
          "https://images.askmen.com/1080x540/2016/01/25-021526-facebook_profile_picture_affects_chances_of_getting_hired.jpg"),
  new ChatModel(
      name: "Mike Ross",
      message: "Wassup !",
      time: "5:00",
      avatarUrl:
          "https://cdn.networkrail.co.uk/wp-content/uploads/2018/02/josh-ward-profile.jpg"),
  new ChatModel(
      name: "Rachel",
      message: "I'm good!",
      time: "10:30",
      avatarUrl:
          "http://gpluseurope.com/wp-content/uploads/Website2016-Profile-Photos-Amanda-Orza-300x261.jpg"),
  new ChatModel(
      name: "Barry Allen",
      message: "I'm the fastest man alive!",
      time: "12:30",
      avatarUrl:
          "https://www.irreverentgent.com/wp-content/uploads/2018/03/Awesome-Profile-Pictures-for-Guys-look-away2.jpg"),
  new ChatModel(
      name: "Joe West",
      message: "Hey John, You are so cool !",
      time: "15:30",
      avatarUrl:
          "https://s3.amazonaws.com/aspph-wp-production/app/uploads/2016/09/Headshot_1_Jess-sexton-e1473780388822.jpg"),
];
