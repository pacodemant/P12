import "dart:io";

class Plant {
  String strain;
  bool isIndica;
  bool isAuto;
  int floweringDurationWeeks;
  int potentialYieldGrams;

  Plant(this.strain, this.isIndica, this.isAuto, this.floweringDurationWeeks,
      this.potentialYieldGrams);

  void logPlant() {
    print("========================Check Input:");
    print("Pflanzenart: $strain");
    print("Pflanzentyp: ${isIndica ? "Indica" : "Sativa"}");
    print("Auto-Blüte: ${isAuto ? "Ja" : "Nein"}");
    print("Blütedauer: $floweringDurationWeeks");
    print("Möglicher Ertrag: $potentialYieldGrams");
  }

  void enterPlantData() {
    print("Pflanzendaten:");
    print("==============");

    stdout.write("Pflanzenart: ");
    strain = stdin.readLineSync() ?? "";

    stdout.write("Pflanzentyp Indica/Sativa (i/s): ");
    isIndica = stdin.readLineSync()?.toLowerCase() == "i";

    stdout.write("Autoflower? (j/n): ");
    isAuto = stdin.readLineSync()?.toLowerCase() == "j";

    stdout.write("Blütedauer in Wochen: ");
    floweringDurationWeeks =
        int.tryParse(stdin.readLineSync() ?? "") ?? 0; // wenn null, dann 0
    ///KURZFORM für obere Codezeile:
    /// String input = "123";
    /// int? result = int.tryParse(input);
    /// if (result != null) {
    /// print("Umwandlung erfolgreich: $result");
    /// } else {
    ///  print("Umwandlung nicht möglich");
    /// } ////wie das funktioniert END

    stdout.write("Möglicher Ertrag in Gramm pro Pflanze: ");
    potentialYieldGrams = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  }

}
