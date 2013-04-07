part of fonctions2;

exercice_2_1(var plusieursPhrases) {
  var phraseLaPlusLongue;
  var listeDePhrase = plusieursPhrases.split('.');
  int longueurDePhrase = 0;
  for (int i = 0; i < listeDePhrase.length; i++) {
    var unePhrase = listeDePhrase[i].trim();
    if (unePhrase.length > longueurDePhrase) {
      longueurDePhrase = unePhrase.length;
      phraseLaPlusLongue = unePhrase;}
    }
  print('La phrase la plus longue est la suivante: ${phraseLaPlusLongue}.');
  print('Cette phrase a une longueur de: ${phraseLaPlusLongue.length} caractères.');
}

exercice_2_2(var phrase) {
  var listeMots = phrase.split(' ');
  var motPlusLong;
  int longueurDuMot = 0;
  for (int i = 0; i < listeMots.length; i++) {
    var leMot = listeMots[i];
    if (leMot.length > longueurDuMot) {
      motPlusLong = leMot;
      longueurDuMot = leMot.length;}
  }
  print('Le mot le plus long de la phrase est: ${motPlusLong}');
}

exercice_2_3(var liste) {
  var aleatoire = new Random();
  var listeAleatoire = new List();
  for (int i = 0; i < liste.length; i++) {
    int randomKey = aleatoire.nextInt(liste.length);
    print('random key: ${randomKey}');
    listeAleatoire.add(liste[randomKey]);
  }
  print('La Liste');
  print(liste);
  print('');
  print('La Liste Aleatoire:');
  print(listeAleatoire);
}

exercice_2_4(var membres, lettre) {
  print('Liste de membres: ');
  print(membres);
  print('');
  var listeMembres = [];
  var listeOrdre = {};
  membres.forEach((key, value) {
    listeMembres.add(value.concat(',${key}'));
  });
  
  
  listeMembres.sort(Comparable.compare);
  for (var membres in listeMembres) {
    var infoMembres = membres.split(',');
    listeOrdre[infoMembres[1]] = infoMembres[0];
  } 
  print('La liste des membres en ordre alphabetique:');
  print(listeOrdre);
  print('');
  
  
  var rechercheMembres = {};
  membres.forEach((key, value) {
    var valeurRecherche = value.toLowerCase();
    if (valeurRecherche.startsWith(lettre.toLowerCase())) {
      rechercheMembres[key] = value;
    }
  });
    print('Le membres commencant par la lettre: ${lettre}');
    print(rechercheMembres);
}

exercice_2_5(var listeClubs) {
  print('La liste des clubs:');
  listeClubs.forEach((keyClub, valueClub) {
    print('${keyClub}:');
    valueClub.forEach((keyMembre, valueMembre) {
      print('${keyMembre}: ${valueMembre}');
    });
  });
  print('');
  
  print('Nouvelle liste de clubs:');  // ici on ajoute un club a la liste des clubs
  listeClubs['Club de Volleyball'] = {};
  listeClubs.forEach((keyClub, valueClub) {
    print('${keyClub}:');
  });
  print('');
  
  print('Nouvelle liste de membres:');  // ici on ajoute un membre a un club
  listeClubs['Club de Volleyball']['Jerome'] = '';
  listeClubs.forEach((keyClub, valueClub) {
    print('${keyClub}: ${valueClub}');
  });
  print('');
  
  print("Nouvelle info d'un membre: "); // ici on ajoute des infos sur un membre
  listeClubs['Club de Volleyball']['Jerome'] = 'Nom de famille: Laberge, Code postal: G3C4V8';
  listeClubs.forEach((keyClub, valueClub) {
    print('${keyClub}:${valueClub}');
  });
  print('');
  
  print("Changement des informations d'Alexandra:"); // ici on change les informations de l'un des membres
  listeClubs['Club de Soccer']['Alexandra'] = 'Nom de famille: Fortier, Code Postal: A1A1A1';
  listeClubs.forEach((keyClub, valueClub) {
    print('${keyClub}:${valueClub}');
  });
  
  }