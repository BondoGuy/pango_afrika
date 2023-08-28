

class Place{
  final String title;
  final String localisation;
  final String town;
  final String land;
  final imgUrl;
  final String description;

  Place({
    required this.land,
    required this.town,
    required this.title,
    required this.localisation,
    this.imgUrl,
    required this.description,
  });
}

final List<Map<String, dynamic>> places = [
  {
    "title": "Vue sur X",
    "avis":"95",
    "imgUrl": 'assets/img/belle-chaussee-maisons-entourees-champs-herbeux-captures-gambie-afrique.jpg',
    "lands":"Cameroun",
    "galery": [
      'assets/img/belle-chaussee-maisons-entourees-champs-herbeux-captures-gambie-afrique.jpg',
      'assets/img/femme-africaine-versant-eau-dans-recipient.jpg',
      'assets/img/jeune-touriste-aux-pieds-nus-casquette-baseball-debout-grosse-pierre-regardant-cascade-derriere-lui-dans-belle-nature-exotique-voyageur-barbu-profitant-faune-lors-randonnee-dans-foret-tropicale.jpg',
      'assets/img/paysages-naturels-africains-vegetation.jpg',
      'assets/img/paysages-naturels-africains-vegetation (1).jpg'
    ],
    "localisation": "18 km",
    "town":"Douala",
    "description":"Vous pouvez personnaliser la barre de recherche en modifiant le code. Par exemple, vous pouvez ajouter des options de filtre supplémentaires, ou modifier l'apparence de la barre de recherche."
  },
  {
    "title": "Vue sur X1",
    "avis":"43",
    "imgUrl": 'assets/img/femme-africaine-versant-eau-dans-recipient.jpg',
    "lands":"Benin",
    "galery": [
      'assets/img/belle-chaussee-maisons-entourees-champs-herbeux-captures-gambie-afrique.jpg',
      'assets/img/femme-africaine-versant-eau-dans-recipient.jpg',
      'assets/img/jeune-touriste-aux-pieds-nus-casquette-baseball-debout-grosse-pierre-regardant-cascade-derriere-lui-dans-belle-nature-exotique-voyageur-barbu-profitant-faune-lors-randonnee-dans-foret-tropicale.jpg',
      'assets/img/paysages-naturels-africains-vegetation.jpg',
      'assets/img/paysages-naturels-africains-vegetation (1).jpg'
    ],
    "localisation": "180 km",
    "town":"Yaounde",
    "description":"La barre de recherche intègre également deux filtres : un filtre de lieu et un filtre de distance. Le filtre de lieu permet à l'utilisateur de ne voir que les résultats correspondant à un lieu particulier. Le filtre de distance permet à l'utilisateur de ne voir que les résultats situés à une distance maximale donnée.Vous pouvez personnaliser la barre de recherche en modifiant le code. Par exemple, vous pouvez ajouter des options de filtre supplémentaires, ou modifier l'apparence de la barre de recherche."
  },
  {
    "title": "Vue sur X2",
    "avis":"14",
    "imgUrl": 'assets/img/jeune-touriste-aux-pieds-nus-casquette-baseball-debout-grosse-pierre-regardant-cascade-derriere-lui-dans-belle-nature-exotique-voyageur-barbu-profitant-faune-lors-randonnee-dans-foret-tropicale.jpg',
    "galery": [
      'assets/img/belle-chaussee-maisons-entourees-champs-herbeux-captures-gambie-afrique.jpg',
      'assets/img/femme-africaine-versant-eau-dans-recipient.jpg',
      'assets/img/jeune-touriste-aux-pieds-nus-casquette-baseball-debout-grosse-pierre-regardant-cascade-derriere-lui-dans-belle-nature-exotique-voyageur-barbu-profitant-faune-lors-randonnee-dans-foret-tropicale.jpg',
      'assets/img/paysages-naturels-africains-vegetation.jpg',
    ],
    "lands":"Senegal",
    "localisation": "50 km",
    "town":"Kribi",
    "description":"La barre de recherche intègre également deux filtres : un filtre de lieu et un filtre de distance. Le filtre de lieu permet à l'utilisateur de ne voir que les résultats correspondant à un lieu particulier. Le filtre de distance permet à l'utilisateur de ne voir que les résultats situés à une distance maximale donnée."
  },
  {
    "title": "Vue sur X3",
    "avis":"41",
    "imgUrl": 'assets/img/paysages-naturels-africains-vegetation.jpg',
    "galery": [
      'assets/img/belle-chaussee-maisons-entourees-champs-herbeux-captures-gambie-afrique.jpg',
      'assets/img/femme-africaine-versant-eau-dans-recipient.jpg',
      'assets/img/jeune-touriste-aux-pieds-nus-casquette-baseball-debout-grosse-pierre-regardant-cascade-derriere-lui-dans-belle-nature-exotique-voyageur-barbu-profitant-faune-lors-randonnee-dans-foret-tropicale.jpg',
      'assets/img/paysages-naturels-africains-vegetation.jpg',
    ],
    "localisation": "5 km",
    "town":"Bonapriso",
    "lands":"Burkina Faso",
    "description":"La barre de recherche intègre également deux filtres : un filtre de lieu et un filtre de distance. Le filtre de lieu permet à l'utilisateur de ne voir que les résultats correspondant à un lieu particulier. Le filtre de distance permet à l'utilisateur de ne voir que les résultats situés à une distance maximale donnée."
  },
];
List<String> list = [
  "Hotels",
  "Lieux Historiques",
  "Marcher artisanal",
  "Decouverte culinaire",
];