class Clothes {
  String title;
  String subtitle;
  String price;
  String imageUrl;
  List<String> detailUrl;

  Clothes(
    this.title,
    this.subtitle,
    this.price,
    this.imageUrl,
    this.detailUrl,
  );

  static List<Clothes> generateClothes() {
    return [
      Clothes(
        'Gucci oversize',
        'Hoodie',
        '\$79.99',
        'assets/images/arrival1.png',
        [
          'assets/images/arrival1.png',
          'assets/images/detail2.png',
        ],
      ),
      Clothes(
        'Man coat',
        'Rain-Jacket',
        '\$39.99',
        'assets/images/arrival2.png',
        [
          'assets/images/arrival2.png',
          'assets/images/detail3.png',
        ],
      ),
    ];
  }
}
