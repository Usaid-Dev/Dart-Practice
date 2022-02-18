import 'dart:io';

void main() {
  print(" Enter your favourite Iphone Model ");
  String item = stdin.readLineSync()!;
  if (PhonesModel(item) == true) {
    print(item + " Found your Favourite Model");
  } else {
    print(item + " Not found in your Favourite Model");
  }
}

bool PhonesModel(String item) {
  List<String> favouritePhone = [
    "7 plus",
    "8 plus",
    "X",
    "Xs max",
  ];
  for (String i in favouritePhone) {
    if (i.toLowerCase() != item.toLowerCase()) {
      continue;
    } else {
      return true;
    }
  }
  return false;
}
