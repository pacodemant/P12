import "dart:io";

class Duenger {
  String name;
  String hersteller;
  int empfohleneHerstellerDosis;
  int eigeneReduzierteDosis;
  bool isLiquid;

  Duenger(this.name, this.hersteller, this.empfohleneHerstellerDosis,
      this.eigeneReduzierteDosis, this.isLiquid);

  void datenEingabe() {
    stdout.write("Name des Düngers: ");
    name = stdin.readLineSync() ?? "";

    stdout.write("Hersteller: ");
    hersteller = stdin.readLineSync() ?? "";

    stdout.write(
        "Ist der Dünger flüssig oder in Pulverform? (l/p): "); // wenn flüssig, dann ml, wenn Pulver, dann g
    String formInput = (stdin.readLineSync() ?? "").toLowerCase();
    isLiquid = formInput == "l";

    stdout.write(
        "vom Hersteller empfohlene Dosis (${isLiquid ? "ml" : "g"} pro Liter): ");
    String herstellerDosisInput = stdin.readLineSync() ?? "";
    empfohleneHerstellerDosis =
        int.tryParse(herstellerDosisInput) ?? 0; // macht aus String ein int
    print(
        "Die Herstellerempfehlungen sind aus nachvollziehbaren Gründen fast immer zu hoch, meist genügt die Hälfte.");

    stdout.write("Alternative Dosis angeben? (j/n): ");
    String alternativeDosisAntwort = (stdin.readLineSync() ?? "").toLowerCase();
    if (alternativeDosisAntwort == "j") {
      stdout.write(
          "Eigene, reduzierte Dosis (${isLiquid ? "ml" : "g"} pro Liter): ");
      String eigeneDosisInput = stdin.readLineSync() ?? "";
      eigeneReduzierteDosis = int.tryParse(eigeneDosisInput) ?? 0;
    } else {
      eigeneReduzierteDosis = empfohleneHerstellerDosis ~/2; // Beispiel: Die Hälfte der empfohlenen Dosis
    }
  }
}
