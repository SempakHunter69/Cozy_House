class Space {
  int id;
  String name;
  String imageUrl;
  double price;
  String city;
  String country;
  int rating;

  Space(
      {this.id = 1,
      this.name = 'Kuratesoo',
      this.imageUrl = 'assets/space.png',
      this.price = 100,
      this.city = 'Bandung',
      this.country = 'Indonesia',
      this.rating = 5});
}
