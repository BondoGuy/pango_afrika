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

// List<Categories> categorie = [
//   Categories(
//     imgUrl:'assets/images/icones/tourisme.png',
//     name:'TOURISME'
//   ),
//   Categories(
//       imgUrl:'assets/images/icones/poterie (1).png',
//       name:'ARTISANAT'
//   ),
//   Categories(
//       imgUrl:'assets/images/icones/mode.png',
//       name:'MODE'
//   ),
//   Categories(
//       imgUrl:'assets/images/icones/mode.png',
//       name:'EMPLOI'
//   ),
// ];