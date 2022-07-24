class Houses {
  String name;
  String address;
  String imageUrl;

  Houses(this.name, this.address, this.imageUrl);

  static List<Houses> generateRecommended() {
    return [
      Houses(
        'The Moon House',
        'D205, Grace Avenue',
        'assets/images/house01.jpeg',
      ),
      Houses(
        'The Saphire House',
        'B308, Emaar Avenue',
        'assets/images/house02.jpeg',
      ),
    ];
  }

  static List<Houses> generateBestOffer() {
    return [
      Houses(
        'The Moon House',
        'D205, Grace Avenue',
        'assets/images/offer01.jpeg',
      ),
      Houses(
        'The Saphire House',
        'B308, Emaar Avenue',
        'assets/images/offer02.jpeg',
      ),
    ];
  }
}
