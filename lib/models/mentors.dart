class Mentors {
  final int id;
  final String profileImg;
  final String name;
  final String title;
  final String website;
  final String raised;
  final String followers;
  final int updates;

  Mentors({
    this.id,
    this.profileImg,
    this.name,
    this.title,
    this.website,
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
  raised: "\$1.2Bn",
  followers: "42k",
  updates: 21
);

final Mentors edward = Mentors(
  id: 2,
  profileImg: "assets/images/profile/guest2.jpg",
  name: "Edward Cruz",
  title: "Co-Founder",
  website: "bananamaker.com",
  raised: "\$50mn",
  followers: "376k",
  updates: 560
);


final Mentors emily = Mentors(
  id: 3,
  profileImg: "assets/images/profile/guest3.jpg",
  name: "Emily Scott",
  title: "Product Manager",
  website: "lead9.com",
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
  raised: "\$3.2Bn",
  followers: "312k",
  updates: 388
);