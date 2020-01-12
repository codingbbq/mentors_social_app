class Mentors {
  final int id;
  final String profileImg;
  final String name;
  final String title;
  final String website;
  final MentorsStats stats;


  Mentors({
    this.id,
    this.profileImg,
    this.name,
    this.title,
    this.website,
    this.stats
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

final Mentors brittany = Mentors(
  id: 1,
  profileImg: "assets/images/profile/guest1.jpg",
  name: "Brittany Hawkins",
  title: "Founder",
  website: "XLogics.com",
  stats: brittanyStats
);

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
  stats: edwardStats
);

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
  stats: emilyStats
);

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
  stats: annStats
);

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
