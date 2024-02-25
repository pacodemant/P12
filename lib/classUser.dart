import "dart:io";
import "functions.dart";

class User {
  String username;
  String password;
  String email;
  String id = "ID wird später iwie erstellt.";
  int age;

  User(this.username, this.password, this.email, this.id, this.age);

  void outputInput() {
    print("=================\nBenutzername: $username");
    print("E-Mail: $email");
    print("ID: $id");
    print("Alter: $age");

    stdout.write("Eingaben richtig? (j/n): ");
    String confirmation = (stdin.readLineSync() ?? "").toLowerCase();

    if (confirmation == "j") {
      // wenn j, dann ok, sonst nochmal eingabe
      print("Vielen Dank!");
    } else if (confirmation == "n") {
      print("================\n\nNochmal anmelden:");
      signIn();
    } else {
      print("Ungültig, nur \"j\" oder \"n\".");
    }
  }

  void signIn() {
    print("Registrierung:");
    print("==============");
    enterUserData();
    print("Registrierung erfolgreich!\n $id");
    print("====================================");
  }

  void enterUserData() {
    stdout.write("Benutzername: ");
    username = stdin.readLineSync() ?? "";

    // Überprüfung ob eMail passt
    do {
      stdout.write("E-Mail: ");
      String emailInput = stdin.readLineSync() ?? "";
      if (isValidEmail(emailInput)) {
        email = emailInput;
      } else {
        print("Ungültige E-Mail-Adresse. Bitte nochmal.");
      }
    } while (
        email == ""); // Wiederholen bis E-Mail gültig  (beinhaltet @ und .)

    stdout.write("Passwort: ");
    password = stdin.readLineSync() ?? "";

    stdout.write("Alter: ");
    String ageInput = stdin.readLineSync() ?? "";
    age = int.tryParse(ageInput) ?? 0; // wenn null, dann 0
  }
}
