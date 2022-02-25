class Car {
  String name;
  String price;
  String description;
  String imageCarHome;
  String imageCarDetail;
  String imageCarAsli;

  Car({
    required this.name,
    required this.price,
    required this.description,
    required this.imageCarHome,
    required this.imageCarDetail,
    required this.imageCarAsli,
  });
}

var carSpesific = [
  Car(
      name: 'BMW Mewah',
      price: 'Rp.529.000.000',
      description:
          'BMW terkenal sebagai produsen yang menyajikan lini kendaraan paling lengkap. Mulai dari yang paling murah berharga kisaran Rp 100 juta sampai yang harganya miliaran pun ada. Selain itu Toyota juga memiliki sub brand kendaraan lux bernama Lexus. Jelas produk-produknya berharga jauh di atas mobil produksi massal dari BMW.',
      imageCarHome: 'images/biru-bulet.png',
      imageCarDetail: 'images/biru-setengah.png',
      imageCarAsli: 'images/biru.png'),
  Car(
      name: 'Toyota Mewah',
      price: 'Rp.329.000.000',
      description:
          'Toyota terkenal sebagai produsen yang menyajikan lini kendaraan paling lengkap. Mulai dari yang paling murah berharga kisaran Rp 100 juta sampai yang harganya miliaran pun ada. Selain itu Toyota juga memiliki sub brand kendaraan lux bernama Lexus. Jelas produk-produknya berharga jauh di atas mobil produksi massal dari Toyota.',
      imageCarHome: 'images/putih-bulet.png',
      imageCarDetail: 'images/putih-setengah.png',
      imageCarAsli: 'images/butih.png'),
  Car(
      name: 'Mobil Mewah',
      price: 'Rp.229.000.000',
      description:
          'Mobil terkenal sebagai produsen yang menyajikan lini kendaraan paling lengkap. Mulai dari yang paling murah berharga kisaran Rp 100 juta sampai yang harganya miliaran pun ada. Selain itu Toyota juga memiliki sub brand kendaraan lux bernama Lexus. Jelas produk-produknya berharga jauh di atas mobil produksi massal dari Mobil.',
      imageCarHome: 'images/coklat-bulet.png',
      imageCarDetail: 'images/coklat-setengah.png',
      imageCarAsli: 'images/coklat.png'),
];
