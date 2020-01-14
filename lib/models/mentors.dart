import 'package:flutter/material.dart';

class Mentors {
  final int id;
  final String profileImg;
  final String name;
  final String title;
  final String website;
  final MentorsStats stats;
  final String about;
  final List<MentorsConnection> connect;


  Mentors({
    this.id,
    this.profileImg,
    this.name,
    this.title,
    this.website,
    this.stats,
    this.about,
    this.connect
  });
}

class MentorsStats {
  final String raised;
  final String followers;
  final int updates;

  MentorsStats({
    this.raised,
    this.followers,
    this.updates
  });
}

class MentorsConnection {
  final IconData icon;
  final String connection;

  MentorsConnection({
    this.icon,
    this.connection
  });
}

final Mentors brittany = Mentors(
  id: 1,
  profileImg: "assets/images/profile/guest1.jpg",
  name: "Brittany Hawkins",
  title: "Founder",
  website: "XLogics.com",
  stats: brittanyStats,
  about: "Contented get distrusts certainty nay are frankness concealed ham. On unaffected resolution on considered of. No thought me husband or colonel forming effects. End sitting shewing who saw besides son musical adapted. Contrasted interested eat alteration pianoforte sympathize was. He families believed if no elegance interest surprise an. It abode wrong miles an so delay plate. She relation own put outlived may disposed. ",
  connect: brittanyConnection
);

final List<MentorsConnection> brittanyConnection = [
  MentorsConnection(
    icon: Icons.link,
    connection: "brittany.web"
  ),
  MentorsConnection(
    icon: Icons.email,
    connection: "me@brittany.web"
  ),
  MentorsConnection(
    icon: Icons.person_pin,
    connection: "@brittany"
  ),

];

final MentorsStats brittanyStats = MentorsStats(
  raised: "\$1.2Bn",
  followers: "42k",
  updates: 21
);

final Mentors edward = Mentors(
  id: 2,
  profileImg: "assets/images/profile/guest2.jpg",
  name: "Edward Cruz",
  title: "Co-Founder",
  website: "bmaker.com",
  stats: edwardStats,
  about: "Unpacked reserved sir offering bed judgment may and quitting speaking. Is do be improved raptures offering required in replying raillery. Stairs ladies friend by in mutual an no. Mr hence chief he cause. Whole no doors on hoped. Mile tell if help they ye full name. ",
  connect: edwardConnection
);


final List<MentorsConnection> edwardConnection = [
  MentorsConnection(
    icon: Icons.link,
    connection: "edward.web"
  ),
  MentorsConnection(
    icon: Icons.email,
    connection: "me@edward.web"
  ),
  MentorsConnection(
    icon: Icons.person_pin,
    connection: "@edward"
  ),

];

final MentorsStats edwardStats = MentorsStats(
  raised: "\$50mn",
  followers: "376k",
  updates: 560
);

final Mentors emily = Mentors(
  id: 3,
  profileImg: "assets/images/profile/guest3.jpg",
  name: "Emily Scott",
  title: "Manager",
  website: "lead9.com",
  stats: emilyStats,
  about: "Did shy say mention enabled through elderly improve. As at so believe account evening behaved hearted is. House is tiled we aware. It ye greatest removing concerns an overcame appetite. Manner result square father boy behind its his. Their above spoke match ye mr right oh as first. Be my depending to believing perfectly concealed household. Point could to built no hours smile sense. ",
  connect: emilyConnection
);

final List<MentorsConnection> emilyConnection = [
  MentorsConnection(
    icon: Icons.link,
    connection: "emily.co.uk"
  ),
  MentorsConnection(
    icon: Icons.email,
    connection: "emily@emily.co.uk"
  ),
  MentorsConnection(
    icon: Icons.person_pin,
    connection: "@emilyscott"
  ),

];

final MentorsStats emilyStats = MentorsStats(
  raised: "\$6.2Bn",
  followers: "221k",
  updates: 328
);

final Mentors ann = Mentors(
  id: 4,
  profileImg: "assets/images/profile/guest4.jpg",
  name: "Ann morgan",
  title: "Co-Founder",
  website: "AILabs",
  stats: annStats,
  about: "Insipidity the sufficient discretion imprudence resolution sir him decisively. Proceed how any engaged visitor. Explained propriety off out perpetual his you. Feel sold off felt nay rose met you. We so entreaties cultivated astonished is. Was sister for few longer mrs sudden talent become. Done may bore quit evil old mile. If likely am of beauty tastes. ",
  connect: annConnection
);

final List<MentorsConnection> annConnection = [
  MentorsConnection(
    icon: Icons.link,
    connection: "annmorgan.com"
  ),
  MentorsConnection(
    icon: Icons.email,
    connection: "morgan@gmail.com"
  ),
  MentorsConnection(
    icon: Icons.person_pin,
    connection: "@annmorgan"
  ),

];

final MentorsStats annStats = MentorsStats(
  raised: "\$3.2Bn",
  followers: "312k",
  updates: 388
);

final List<Mentors> mentorsList = [
  brittany,
  edward,
  emily,
  ann
];
