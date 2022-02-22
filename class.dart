import 'dart:io';

void main() {
  Welcome();
  Controls();
}

Welcome() {
  print("Welcome To Contact-Book");
}

void Controls() {
  Contact cont = Contact();
  while (true) {
    cont.mainMenu();
    String choice = stdin.readLineSync()!;
    switch (choice) {
      case '1':
        cont.addContact();
        break;
      case '2':
        cont.updateContact();
        break;
      case '3':
        cont.listAll();
        break;
      case '4':
        cont.deleteContact();
        break;
      default:
        exit(0);
    }
  }
}

class Contact {
  String name = '';
  String phone = '';
  String email = '';
  String dob = '';
  List<List<String>> contacts = [];

  mainMenu() {
    print("======== Main Menu ========");
    print("Enter 1 to add Contact");
    print("Enter 2 to Update Contact");
    print("Enter 3 to List All Contacts");
    print("Enter 4 to Delete a contact");
    print("Please enter your choice:");
  }

  addContact() {
    print('Enter Name:');
    this.name = stdin.readLineSync()!;
    print('Enter Phone Number:');
    this.phone = stdin.readLineSync()!;
    print('\nEmail and Date of Birth are Optional Wanna Add?\n1. Yes\n2. No');
    String choice = stdin.readLineSync()!;
    if (choice == '1') {
      print('Enter Email:');
      this.email = stdin.readLineSync()!;
      while (!this.email.contains('@')) {
        print('\n Invalid Email \n Enter Email:');
        this.email = stdin.readLineSync()!;
      }
      print('Enter Date of Birth:');
      this.dob = stdin.readLineSync()!;
    } else {
      this.email = email;
      this.dob = dob;
    }
    contacts.add([this.name, this.phone, this.email, this.dob]);
  }

  updateContact() {
    if (!contacts.isEmpty) {
      print('\nChoose in Number (Start From 0)\n${contacts}');
      String index = stdin.readLineSync()!;
      contacts.removeAt(int.parse(index));
      addContact();
      print(' Contact Updated \n');
    } else {
      print(' !! List is Empty !!\n');
    }
  }

  listAll() {
    if (!contacts.isEmpty) {
      for (var lst in contacts) {
        print('\nName: ${lst[0]}');
        print('Phone: ${lst[1]}');
        print('Email: ${lst[2]}');
        print('Date of Birth: ${lst[3]}');
      }
    } else {
      print('!! The List is Empty !!\n');
    }
  }

  deleteContact() {
    if (!contacts.isEmpty) {
      print('\nChoose in Number (Start From 0)\n${contacts}');
      String delIndex = stdin.readLineSync()!;
      contacts.removeAt(int.parse(delIndex));
      print('---- Deleted ----');
    } else {
      print('!! List is Empty !!\n');
    }
  }
}
