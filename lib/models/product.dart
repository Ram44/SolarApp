class Product {
  final int id, price;
  final String title, description, image;

  Product(this.id, this.price, this.title, this.description, this.image);
}

//list of product
List<Product> products = [
  // Product(2, 100, "K XA", "description", "assets/images/pic1.png"),
  Product(
      1,
      348,
      "Solar 1",
      "Swogun Energy Pvt. Ltd. is a solar and alternative energy system manufacture & supplier company in Nepal. We specialize in providing solar home lighting systems in the rural areas of Nepal, water pumps, vaccine refrigerators, and portable power pack solar systems for tourists or travelers, so that they can use laptops during their stay at villages which lack electricity. ",
      "assets/images/solar1.jpg"),
  Product(
      2,
      349,
      "Solar 2",
      "Swogun Energy Pvt. Ltd. is a solar and alternative energy system manufacture & supplier company in Nepal. We specialize in providing solar home lighting systems in the rural areas of Nepal, water pumps, vaccine refrigerators, and portable power pack solar systems for tourists or travelers, so that they can use laptops during their stay at villages which lack electricity.",
      "assets/images/solar1.jpg"),
  Product(
      3,
      350,
      "Solar 3",
      "Swogun Energy Pvt. Ltd. is a solar and alternative energy system manufacture & supplier company in Nepal. We specialize in providing solar home lighting systems in the rural areas of Nepal, water pumps, vaccine refrigerators, and portable power pack solar systems for tourists or travelers, so that they can use laptops during their stay at villages which lack electricity.",
      "assets/images/solar1.jpg"),
];
