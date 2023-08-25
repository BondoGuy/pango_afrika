

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
    "galery": [
      'assets/img/belle-chaussee-maisons-entourees-champs-herbeux-captures-gambie-afrique.jpg',
      'assets/img/femme-africaine-versant-eau-dans-recipient.jpg',
      'assets/img/jeune-touriste-aux-pieds-nus-casquette-baseball-debout-grosse-pierre-regardant-cascade-derriere-lui-dans-belle-nature-exotique-voyageur-barbu-profitant-faune-lors-randonnee-dans-foret-tropicale.jpg',
      'assets/img/paysages-naturels-africains-vegetation.jpg',
      'assets/img/paysages-naturels-africains-vegetation (1).jpg'
    ],
    "localisation": "18 km",
    "town":"Douala",
    "description":"brufbufbuubbuub ububbubefxjmihimx inrubfuihixhh wxwbcubuubemixiimixfbcxicxwxmixi"
  },
  {
    "imgUrl": 'assets/images/icones/tourisme.png',
    "galery": [
      'assets/img/belle-chaussee-maisons-entourees-champs-herbeux-captures-gambie-afrique.jpg',
      'assets/img/femme-africaine-versant-eau-dans-recipient.jpg',
      'assets/img/jeune-touriste-aux-pieds-nus-casquette-baseball-debout-grosse-pierre-regardant-cascade-derriere-lui-dans-belle-nature-exotique-voyageur-barbu-profitant-faune-lors-randonnee-dans-foret-tropicale.jpg',
      'assets/img/paysages-naturels-africains-vegetation.jpg',
      'assets/img/paysages-naturels-africains-vegetation (1).jpg'
    ],
    "localisation": "180 km",
    "town":"Yaounde",
    "description":"brufbufbuubbuub ububbubefxjmihimx inrubfuihixhh wxwbcubuubemixiimixfbcxicxwxmixi"
  },
  {
    "imgUrl": 'assets/images/icones/tourisme.png',
    "galery": [
      'assets/img/belle-chaussee-maisons-entourees-champs-herbeux-captures-gambie-afrique.jpg',
      'assets/img/femme-africaine-versant-eau-dans-recipient.jpg',
      'assets/img/jeune-touriste-aux-pieds-nus-casquette-baseball-debout-grosse-pierre-regardant-cascade-derriere-lui-dans-belle-nature-exotique-voyageur-barbu-profitant-faune-lors-randonnee-dans-foret-tropicale.jpg',
      'assets/img/paysages-naturels-africains-vegetation.jpg',
      'assets/img/paysages-naturels-africains-vegetation (1).jpg'
    ],
    "localisation": "50 km",
    "town":"Kribi",
    "description":"brufbufbuubbuub ububbubefxjmihimx inrubfuihixhh wxwbcubuubemixiimixfbcxicxwxmixi"
  },
  {
    "imgUrl": 'assets/images/icones/tourisme.png',
    "galery": [
      'assets/img/belle-chaussee-maisons-entourees-champs-herbeux-captures-gambie-afrique.jpg',
      'assets/img/femme-africaine-versant-eau-dans-recipient.jpg',
      'assets/img/jeune-touriste-aux-pieds-nus-casquette-baseball-debout-grosse-pierre-regardant-cascade-derriere-lui-dans-belle-nature-exotique-voyageur-barbu-profitant-faune-lors-randonnee-dans-foret-tropicale.jpg',
      'assets/img/paysages-naturels-africains-vegetation.jpg',
      'assets/img/paysages-naturels-africains-vegetation (1).jpg'
    ],
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