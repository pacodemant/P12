import "dart:io";

class Environment {
  double pH;
  int width;
  int length;
  int height;
  int ledPower;
  int ledHeight;

  Environment(this.pH, this.width, this.length, this.height, this.ledPower,
      this.ledHeight);

  void logEnvironment() {
    print("\nEingaben-Check");
    print("================");
    print("pH (Leitungswasser): $pH");
    print("Maße (BxTxH)cm: $width x $length x $height");
    print("Grundfläche: ${calculateArea()} Quadratmeter");
    print("LED Leistung in Watt: $ledPower");
    print("LED Abstand in cm: $ledHeight");
  }

  double calculateArea() {
    // Berechnung der Grundfläche in Quadratmetern
    return (width * length) / 10000; // Umrechnung von cm² in m²
  }

  void enterEnvironmentData() {
    print("Eingabe Umgebungsdaten:");

    stdout.write("pH (Leitungswasser): ");
    String pHInput = stdin.readLineSync() ?? "";
    pH = double.tryParse(pHInput.replaceAll(",", ".")) ?? 0.0;

    stdout.write("Breite der Growbox in cm: ");
    String widthInput = stdin.readLineSync() ?? "";
    width = int.tryParse(widthInput) ?? 0;

    stdout.write("Länge der Growbox in cm: ");
    String lengthInput = stdin.readLineSync() ?? "";
    length = int.tryParse(lengthInput) ?? 0;

    stdout.write("Höhe der Growbox in cm: ");
    String heightInput = stdin.readLineSync() ?? "";
    height = int.tryParse(heightInput) ?? 0;

    stdout.write("LED Leistung in Watt: ");
    String ledPowerInput = stdin.readLineSync() ?? "";
    ledPower = int.tryParse(ledPowerInput) ?? 0;

    stdout.write("LED Höhe in cm: ");
    String ledHeightInput = stdin.readLineSync() ?? "";
    ledHeight = int.tryParse(ledHeightInput) ?? 0;
  }
}
