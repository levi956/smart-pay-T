class Onboarding {
  String? imagePath;
  String? title;
  String? description;

  Onboarding({this.description, this.imagePath, this.title});
}

List<Onboarding> onboardContent = [
  Onboarding(
      imagePath: 'assets/images/onboardOneT.png',
      description:
          'Your finance work starts here.We are here to help\nyou track and deal with speeding up your\ntransactions.',
      title: 'Finance app the most safest and most secured'),
  Onboarding(
      imagePath: 'assets/images/onboardTwoT.png',
      description:
          'Get easy to pay all your bills with just a few\nsteps. Paying all your bills become fast and\nefficient.',
      title: 'The fastest transaction process only here')
];
