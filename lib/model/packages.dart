class Package {
  String imageUrl;
  String destination;
  String prix;
  String description;
  String flight;
  String transport;
  String activites;
  String heberge;


  Package({
    this.imageUrl,
    this.destination,
    this.prix,
    this.description,
    this.flight,
    this.transport,
    this.heberge,
    this.activites,
  });
}

final List<Package> packages = [
  Package(
    imageUrl: 'assets/images/mal4.png',
    destination: 'Penang',
    prix: '400 ',
    description: 'Une ville qui se trouve en Malyisie, et attire des millions de touristes chaque année',
    flight: 'Billet d avion de Alger vers Penang à partir de 23 000 da',
    transport: 'Un abbonement VTC',
    heberge: 'Une chambre dans un hotel pendant 10 jours',
    activites: 'Ski, Swim, Camp.'
  ),
  
    Package(
    imageUrl: 'assets/images/mal4.png',
    destination: 'Barcelone',
    prix: '400£',
    description: 'Une ville en espagne, une ville fascinante, une ville pour vous!',

  )
];



class PackageSpec {
  String imageUrl;
  String destination;
  String prix;
  String description;

  PackageSpec({
    this.imageUrl,
    this.destination,
    this.prix,
    this.description,
  });
}



final List<PackageSpec> packagesSpec = [
  PackageSpec(
    imageUrl: 'assets/images/mal4.jpg',
    destination: 'Oran',
    prix: "333£",
    description: 'Une ville à lOuest Algérien, des très beaux paysages et exprience vous attend!',

  ),

  PackageSpec(
    imageUrl: 'assets/images/mal4.jpg',
    destination: 'Alger',
    prix: '400£',
    description: 'Une ville à lEst Algérien, des très beaux paysages et exprience vous attend!',
  ),
  PackageSpec(
    imageUrl: 'assets/images/mal4.jpg',
    destination: 'Jijel',
    prix: '400£',
    description: 'Une ville à lOuest Algérien, des très beaux paysages et exprience vous attend!',
  ),
];