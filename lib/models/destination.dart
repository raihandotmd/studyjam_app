class DestinationModel {
  String imgPath;
  String title;
  String location;
  String price;

  // constructor
  DestinationModel(
      {required this.imgPath,
      required this.title,
      required this.location,
      required this.price});

  static List<DestinationModel> getDestinations() {
    List<DestinationModel> destinations = [];

    destinations.add(DestinationModel(
        imgPath: "assets/images/placehold150.png",
        title: "Sunny Beach",
        location: "California, USA",
        price: "50"));
    destinations.add(DestinationModel(
        imgPath: "assets/images/placehold150.png",
        title: "Mountain Retreat",
        location: "Colorado, USA",
        price: "70"));
    destinations.add(DestinationModel(
        imgPath: "assets/images/placehold150.png",
        title: "City Lights",
        location: "New York, USA",
        price: "100"));
    destinations.add(DestinationModel(
        imgPath: "assets/images/placehold150.png",
        title: "Desert Oasis",
        location: "Dubai, UAE",
        price: "80"));
    destinations.add(DestinationModel(
        imgPath: "assets/images/placehold150.png",
        title: "Historic Ruins",
        location: "Rome, Italy",
        price: "60"));
    destinations.add(DestinationModel(
        imgPath: "assets/images/placehold150.png",
        title: "Tropical Paradise",
        location: "Maldives",
        price: "120"));
    destinations.add(DestinationModel(
        imgPath: "assets/images/placehold150.png",
        title: "Snowy Peaks",
        location: "Swiss Alps, Switzerland",
        price: "90"));
    destinations.add(DestinationModel(
        imgPath: "assets/images/placehold150.png",
        title: "Cultural Hub",
        location: "Kyoto, Japan",
        price: "75"));

    return destinations;
  }
}
