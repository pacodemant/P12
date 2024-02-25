// ignore: unnecessary_import
import "package:P12/classEnvironment.dart";
import "package:test/test.dart";


void main() {

  test("Flächenberechnung", () {
// ERWARTUNG, was als Ergebnis rauskommt, wenn ich die Funktion ausführe (weiter unten)
    double expectFloorSize = 0.64; // wenn a und b, jeweils =1, zusammengezählt werden

// AUSFÜHREN der Funktion/Methode, die ich testen will
//(der normale Aufruf der Klassen-Methode funktioniert i.d. Test-Datei nicht
//sondern wir müssen erst ein tatsächliches Objekt der Klasse erstellen)

Environment growbox = Environment(5.5, 80, 80, 160, 120, 30);
double floorSize = growbox.calculateArea();

    // ÜBERPRÜFUNG, ob unsere Erwartung erfüllt wird
    expect(floorSize, expectFloorSize);
  });

//// DO NOT DELETE //////////////////////////////// main() END
}
