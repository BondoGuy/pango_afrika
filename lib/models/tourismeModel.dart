

class Place{
  //final String title;
  final String localisation;
  final String town;
  final imgUrl;
  final String description;

  Place({
    required this.town,
    //required this.title,
    required this.localisation,
    this.imgUrl,
    required this.description,
  });
}

final List<Map<String, dynamic>> place = [
  {
    "imgUrl": 'assets/images/icones/tourisme.png',
    "localisation": "18 km",
    "town":"Douala",
    "description":"brufbufbuubbuub ububbubefxjmihimx inrubfuihixhh wxwbcubuubemixiimixfbcxicxwxmixi"
  },
  {
    "imgUrl": 'assets/images/icones/tourisme.png',
    "localisation": "180 km",
    "town":"Yaounde",
    "description":"brufbufbuubbuub ububbubefxjmihimx inrubfuihixhh wxwbcubuubemixiimixfbcxicxwxmixi"
  },
  {
    "imgUrl": 'assets/images/icones/tourisme.png',
    "localisation": "50 km",
    "town":"Kribi",
    "description":"brufbufbuubbuub ububbubefxjmihimx inrubfuihixhh wxwbcubuubemixiimixfbcxicxwxmixi"
  },
  {
    "imgUrl": 'assets/images/icones/tourisme.png',
    "localisation": "5 km",
    "town":"Bonapriso",
    "description":"brufbufbuubbuub ububbubefxjmihimx inrubfuihixhh wxwbcubuubemixiimixfbcxicxwxmixi"
  },
];
List<String> categories = [
  "Hotels",
  "Lieux Historiques",
  "Mqrcher artisanal",
  "Decouverte culinaire",
];