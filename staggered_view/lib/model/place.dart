class Place {
  String title;
  String subtitle;
  String imageUrl;
  double height;

  Place(this.title, this.subtitle, this.imageUrl, this.height);

  static List<Place> generatePlaces() {
    return [
      Place('Rain Forest', 'Costa Rica', 'assets/images/bg1.png', 240),
      Place('Lake Louise', 'Canada', 'assets/images/bg2.png', 200),
      Place('Plitivice Lake', 'Canada', 'assets/images/bg3.png', 120),
      Place('Dubai', 'UAE', 'assets/images/bg4.png', 200),
      Place('Rain Forest', 'Canada', 'assets/images/bg5.png', 240),
      Place('Plitivice Lake', 'Canada', 'assets/images/bg6.png', 150),
    ];
  }
}
