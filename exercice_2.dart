library fonctions2;
import 'dart:math';
part 'fonctions2.dart';

ex_2_1() {
  var plusieursPhrases = ''' Marie mange du pain. Jean est grand. Lucie est petite. Louise a un gros chien. Le chien mange son plat de moulée.''';
  exercice_2_1(plusieursPhrases);
}

ex_2_2() {
  var phrase = 'Dans cette phrase se trouve une très long mot qui permettra de résoudre de mystère.';
  exercice_2_2(phrase);
}

ex_2_3() {
  var liste = ['Alexandra', 'Maxime', 'Julie', 'Jérôme', 'Benoit'];
  exercice_2_3(liste);
}

ex_2_4() {
  var membres = { 'Membre 1': 'Alexandra Fortier, email: af@gmail.com',
                  'Membre 2': 'Lucie Marquis, email: lm@gmail.com',
                  'Membre 3' : 'Robert Fortier, email: rf@gmail.com',
                  'Membre 4' : 'Rolande Savard, email: rs@gmail.com'};
  var lettre = 'A';
  exercice_2_4(membres, lettre);
 }

ex_2_5() {
  
  var listeClubs = {
                    'Club de Soccer':{
                     'Alexandra': {'Nom de famille': 'Fortier', 'Code postal': 'G0A2K0'},
                     'Lucie': {'Nom de famille': 'Marquis', 'Code postal': 'G1C2K5'},
                     'Benoit': {'Nom de famille': 'Fortier', 'Code postal': 'g1b3S8'}
                    },
                    'Club de Hockey':{
                      'Valerie': {'Nom de famille': 'Huot', 'Code postal': 'G1V4D5'},
                      'Christine': {'Nom de famille': 'Defoy', 'Code postal': 'G6V4M7'}
                    }};
  exercice_2_5(listeClubs);
}



void main() {
  print('Exercice 2');
  print('');
  print('Exercice_2_1');
  ex_2_1(); 
  print('');
  print('Exercice_2_2');
  ex_2_2();
  print('');
  print('Exercice_2_3');
  ex_2_3();
  print('');
  print('Exercice_2_4');
  ex_2_4();
  print('');
  print('Exercice_2_5');
  ex_2_5();
}
