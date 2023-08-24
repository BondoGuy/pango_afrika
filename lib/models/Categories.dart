class Categories{
  final String name;
  final Function onPressed;
  final imgUrl;

  Categories({
    required this.name,
    required this.onPressed,
    this.imgUrl, });
}

final List<Map<String, dynamic>> categories = [
  {
    "name": "TOURISME",
    "imgUrl": 'assets/images/icones/tourisme.png',
  },
  {
    "name": "ARTISANAT",
    "imgUrl": 'assets/images/icones/poterie (1).png',
  },
  {
    "name": "MODE",
    "imgUrl": 'assets/images/icones/mode.png',
  },
  {
    "name": "EMPLOI",
    "imgUrl": 'assets/images/icones/recherche-demploi.png',
  },

];
final List<Map<String, dynamic>> tourisme = [
{
"name": "Lieux historiques",
"imgUrl": 'assets/icones/destination_854894.png',
},
{
"name": "Hotels",
"imgUrl": 'assets/icones/building_3310553.png',
},
{
"name": "Decouverte Culinaire",
"imgUrl": 'assets/icones/restaurant_9638472.png',
},
{
"name": "Marches artisanals",
"imgUrl": 'assets/icones/binoculars_2991359.png',
},

];
final List<Map<String, dynamic>> mode = [
  {
    "name": "TOURISME",
    "imgUrl": 'assets/images/icones/tourisme.png',
  },
  {
    "name": "ARTISANAT",
    "imgUrl": 'assets/images/icones/poterie (1).png',
  },
  {
    "name": "MODE",
    "imgUrl": 'assets/images/icones/mode.png',
  },
  {
    "name": "EMPLOI",
    "imgUrl": 'assets/images/icones/recherche-demploi.png',
  },

];











