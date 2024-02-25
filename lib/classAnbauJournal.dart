import "dart:io";

class AnbauJournal {
  int fertilizerMenge;
  double wassermenge;
  List<String> datum;
  int pflanzenhoehe;
  int rlfEnvironment;
  int temperatureEnvironment;

  AnbauJournal(this.fertilizerMenge, this.wassermenge, this.datum,
      this.pflanzenhoehe, this.rlfEnvironment, this.temperatureEnvironment);

  void datenEingabe() {
    print("Anbau-Journal:");

    DateTime now = DateTime.now(); // liest Datum, braucht User nicht eingeben
    datum = [now.day.toString(), now.month.toString(), now.year.toString()];

    stdout.write("Dünger Menge in g/ml: ");
    String fertilizerMengeInput = stdin.readLineSync() ?? "";
    fertilizerMenge = int.tryParse(fertilizerMengeInput) ?? 0;

    stdout.write("Wassermenge in Liter: ");
    String wassermengeInput = stdin.readLineSync() ?? "";
    wassermenge = double.tryParse(wassermengeInput) ?? 0.0;

    stdout.write("Pflanzenhöhe in cm: ");
    String pflanzenhoeheInput = stdin.readLineSync() ?? "";
    pflanzenhoehe = int.tryParse(pflanzenhoeheInput) ?? 0;

    stdout.write("RLF in %: ");
    String rlfEnvironmentInput = stdin.readLineSync() ?? "";
    rlfEnvironment = int.tryParse(rlfEnvironmentInput) ?? 0;

    stdout.write("Temperatur in °C: ");
    String temperatureEnvironmentInput = stdin.readLineSync() ?? "";
    temperatureEnvironment = int.tryParse(temperatureEnvironmentInput) ?? 0;
  }

// Ausgabe zum Überprüfen
  void protocol() {
    print("\nAnbau-Journal:");
    print("Dünger Menge in g/ml: $fertilizerMenge");
    print("Wassermenge in Liter: $wassermenge");
    print("Datum: ${datum.join("/")}");
    print("Pflanzenhöhe in cm: $pflanzenhoehe");
    print("RLF in %: $rlfEnvironment");
    print("Temperatur in °C: $temperatureEnvironment");
  }
}
