class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Tourisme et Loisirs",
    desc: "Remember to keep track of your professional accomplishments.",
    image: "assets/images/Online wishes list.gif",
  ),
  OnboardingContents(
    title: "Stay organized with team",
    image: "assets/images/Hotel Booking (1).gif",
    desc:
        "But understanding the contributions our colleagues make to our teams and companies.",
  ),
  OnboardingContents(
    title: "Get notified when work happens",
    image: "assets/images/At work (1).gif",
    desc:
        "Take control of notifications, collaborate live or on your own time.",
  ),
  OnboardingContents(
    title: "LE GRENIER DU CONTINENT",
    image: "assets/images/globe.png",
    desc:
        "Take control of notifications, collaborate live or on your own time.",
  ),
];
