class DestinationModel {
  String imgURL;
  String title;
  String location;
  String price;

  // constructor
  DestinationModel(
      {required this.imgURL,
      required this.title,
      required this.location,
      required this.price});

  static List<DestinationModel> getDestinations() {
    List<DestinationModel> destinations = [];

    destinations.add(DestinationModel(
        imgURL: "https://picsum.photos/150",
        title: "The Pink Beach",
        location: "Komodo Island, Indonesia",
        price: "48"));
    destinations.add(DestinationModel(
        imgURL: "https://picsum.photos/150",
        title: "Meru Tower",
        location: "Bali, Indonesia",
        price: "36"));
    destinations.add(DestinationModel(
        imgURL: "https://picsum.photos/150",
        title: "Toraja Island",
        location: "South Sulawesi, Indonesia",
        price: "36"));
    destinations.add(DestinationModel(
        imgURL: "https://picsum.photos/150",
        title: "Toraja Island",
        location: "South Sulawesi, Indonesia",
        price: "36"));

    return destinations;
  }
}
