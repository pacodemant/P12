import "dart:io";

import "classPlant.dart";
import "classEnvironment.dart";
import "classUser.dart";
import "classDuenger.dart";
import "classAnbauJournal.dart";


//  -------------------------------------------------- Eingabe PFLANZEN-Daten
void enterPlantData() {
  var userInputPlant = Plant("", false, false, 0, 0); //  Ojekterstellung
  print("Deine Pflanzen:"); //  Überschrift

  userInputPlant.enterPlantData(); //  Usereingabe

  userInputPlant.logPlant(); //  Ausgabe zur Überprüfung
}

// -------------------------------------------------- Eingabe UMGEBUNGS-Daten
void enterEnvironmentData() {
  var userInputEnvironment =
      Environment(0.0, 0, 0, 0, 0, 0); //  Ojekterstellung
  print("Werte Deiner Growbox: "); //  Überschrift

  userInputEnvironment.enterEnvironmentData(); //  Usereingabe

  userInputEnvironment.logEnvironment(); //  output zur Überprüfung
}

// -------------------------------------------------- Eingabe USER-Daten
void enterUserData() {
  User user =
      User("", "", "", "ID wird später iwie erstellt.", 0); //  Ojekterstellung

  print("Sign in (User-Account): "); //  Überschrift

  user.signIn(); //  Account-Erstellung (nicht Login)

  user.outputInput(); //  Ausgabe zum +berprüfen der Eingaben
}

// -------------------------------------------------- Eingabe DÜNGER-Daten
void enterDuengerData() {
  Duenger duenger = Duenger("", "", 0, 0, true); //  Ojekterstellung

  print("Dein Dünger"); //  Überschrift

  duenger.datenEingabe(); //  Usereingabe

  print("Danke, Ende der Eingabe"); //  DAmit User weiß: Eingabe beendet
}

// -------------------------------------------------- Eingabe JOURNAL-Daten
void enterJournalData() {
  List<AnbauJournal> protokolle = []; //  Ojekterstellung Liste

  print("Anbau-Journal!"); //  Überschrift

  bool correctInput =
      false; // steuert die folgende while-Schleife (solange false …)

  while (!correctInput) {
    //  Schleife für Usereingabe
    AnbauJournal anbauJournal =
        AnbauJournal(0, 0.0, [], 0, 0, 0); //  neues Objekt

    anbauJournal.datenEingabe(); //  User-Eingabe

    protokolle.add(anbauJournal); //  Tagesjournal der Liste hinzufügen

    stdout.write("\nSind alle Eingaben korrekt? (j/n): "); //  Alles korrekt?
    String confirmation = stdin.readLineSync()?.toLowerCase() ?? "";

    if (confirmation == "j") {
      // je nach eingabe Ende oder Eingabe noch mal
      correctInput = true;
      print("\nHeutiges Protokoll erledigt");
    } else if (confirmation == "n") {
      print("\nDann bitte nochmal.");
      protokolle
          .removeLast(); // wenn "n", dann entfernen letztes Protokoll aus der Liste
    } else {
      print("\nBitte nur j/n.");
    }
  }
}


  // Hier folgt später noch eine Ausgabe der kompletten Journal-Liste
  // ... oder auch nicht :-(


 // -------------------------------------------------- User-Auswahl, was er tun will
  void m() {
  // Gibt eine Auswahl für den Benutzer aus
  print("\nWas möchtest du tun?");
  print("1. Pflanzendaten");
  print("2. Umgebungsdaten");
  print("3. Userdaten");
  print("4. Düngerdaten");
  print("5. Tägliches Journal");

  stdout.write("Wähle mit Ziffer aus: ");
  String selectedOption = stdin.readLineSync() ?? "";
  //String selectedOption = stdin.readByteSync();
  //obere Codezeile soll eigentlich dafür sorgen,
  //dass der User die Eingabe nicht noch mit ENTER
  //bestätigen muss, sondern dass das Programm
  //nach der Eingabe eines Zeichens einfach weiterläuft,
  //in diesem Fall zur swith-case übergeht.
  //kriege ich aber nicht hin

  switch (selectedOption) {
    case "1":
      enterPlantData();
      break;
    case "2":
      enterEnvironmentData();
      break;
    case "3":
      enterUserData();
      break;
    case "4":
      enterDuengerData();
      break;
    case "5":
      enterJournalData();
      break;
    default:
      print("Ungültige Auswahl.");
  }
  }

