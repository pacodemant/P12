// einfache Prüfug, ob die Eingabe überhaupt eine eMail-Addy sein KANN
bool isValidEmail(String email) {
  // Einfache Validierung der E-Mail-Adresse
  // Hier könntest du eine genauere Validierung implementieren
  return email.contains('@') && email.contains('.');
}
