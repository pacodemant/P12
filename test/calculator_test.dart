// ignore: unnecessary_import
import "package:test/scaffolding.dart";
import "package:test/test.dart";

import "../bin/calculator.dart";

/// ----------------------------------
/// Tutorium mit Nico zu Unit-Testing
/// ----------------------------------

void main() {
  test("Taschenrechner testen", () {
// ERWARTUNG, was als Ergebnis rauskommt, wenn ich die Funktion ausführe (weiter unten)
    int erwartung = 2; // wenn a und b, jeweils =1, zusammengezählt werden

// AUSFÜHREN der Funktion/Methode, die ich testen will
//(der normale Aufruf der Klassen-Methode funktioniert i.d. Test-Datei nicht
//sondern wir müssen erst ein tatsächliches Objekt der Klasse erstellen)
    Calculator myCalculator = Calculator();
    int ergebnis = myCalculator.add(1, 1);

    // ÜBERPRÜFUNG, ob unsere Erwartung erfüllt wird
    expect(ergebnis, erwartung);
  });

//// DO NOT DELETE //////////////////////////////// main() END
}
