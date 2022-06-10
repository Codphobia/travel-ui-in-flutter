class Cities {
  String cityName;
  String imagePath;
  int priceDollars;
  Cities(
      {required this.cityName,
      required this.imagePath,
      required this.priceDollars});
}

List<Cities> citiesList = [
  Cities(
      cityName: 'New York',
      imagePath: 'assets/siddharth.jpg',
      priceDollars: 45),
  Cities(
      cityName: 'London',
      imagePath: 'assets/siddharth-shah.jpg',
      priceDollars: 100),
  Cities(cityName: 'Pakistan', imagePath: 'assets/rogo.jpg', priceDollars: 20),
  Cities(
      cityName: 'Japan', imagePath: 'assets/kaupanger.jpg', priceDollars: 190),
  Cities(cityName: 'Canada', imagePath: 'assets/mario.jpg', priceDollars: 10),
  Cities(
      cityName: 'Afgnistan',
      imagePath: 'assets/allyson-beaucourt.jpg',
      priceDollars: 67),
  Cities(
      cityName: 'Bangala',
      imagePath: 'assets/freysteinn.jpg',
      priceDollars: 50),
  Cities(
      cityName: 'Germany',
      imagePath: 'assets/siddharth-shah.jpg',
      priceDollars: 200),
  Cities(cityName: 'Nepal', imagePath: 'assets/naida.jpg', priceDollars: 29),
  Cities(cityName: 'Itlay', imagePath: 'assets/rogov.jpg', priceDollars: 10),
];
