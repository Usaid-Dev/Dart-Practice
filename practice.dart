import 'dart:io';

void main() {
  List<String> contacts = [];
  while (true) {
    mainmenu(contacts);
  }
}

void mainmenu(List<String> contacts) {
  print("=== Main Menu ===");
  print("1. Add Contact");
  print("2. List Contact");
  print("=== Main Menu ===");
  String option = stdin.readLineSync()!;
  if (option == "1") {
    addcontacts(contacts);
  } else if (option == "2") {
    allcontacts(contacts);
  } else {
    return;
  }
}

addcontacts(List<String> contacts) {
  print("");
  print("Enter Name");
  String contactname = stdin.readLineSync()!;
  contacts.add(contactname);
}

allcontacts(List<String> contacts) {
  print("");
  int sno = 1;
  for (String contact in contacts) {
    print("${sno++}. $contact");
  }
}
