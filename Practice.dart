import 'dart:io';

abstract class Product {
  final name;
  int stockQuantity;
  int price;
  Product(this.name, this.stockQuantity, this.price);
}

class Usb extends Product {
  Usb(String usbName, int usbQuantity, int usbPrice)
      : super(usbName, usbQuantity, usbPrice);
}

class Tshirt extends Product {
  Tshirt(String tshirtName, int tshirtQuantity, int tshirtPrice)
      : super(tshirtName, tshirtQuantity, tshirtPrice);
}

class iPhoneX extends Product {
  iPhoneX(String iphoneName, int iphoneQuantity, int iphonePrice)
      : super(iphoneName, iphoneQuantity, iphonePrice);
}

class Cart {
  static List<int> quantity = [];
  showProducts(productList, cartlist) {
    int i = 0;
    for (var product in productList) {
      print("Press ${++i} to select ${product.name} ");
    }

    print("\nEnter Your Choice: ");
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        print("\nEnter number of quantity you want: ");
        String qty = stdin.readLineSync()!;
        quantity.add(int.parse(qty));
        if (int.parse(qty) > productList[0].stockQuantity) {
          print("Product out of stock!\nTry some lower quantity\n");
        } else {
          cartlist.add(productList[0]);
        }
        break;

      case '2':
        print("\nEnter number Of quantity you want: ");
        String qty = stdin.readLineSync()!;
        quantity.add(int.parse(qty));
        if (int.parse(qty) > productList[1].stockQuantity) {
          print("Product out of stock!\nTry some lower quantity\n");
        } else {
          cartlist.add(productList[1]);
        }
        break;

      case '3':
        print("\nEnter number Of quantity you want: ");
        String qty = stdin.readLineSync()!;
        quantity.add(int.parse(qty));
        if (int.parse(qty) > productList[2].stockQuantity) {
          print("\nProduct out of stock!\nTry some lower quantity\n");
        } else {
          cartlist.add(productList[2]);
        }
        break;
      default:
        print("Wrong Input!!");
    }
  }
}

class Order {
  checkOutArea(cartCheckOut) {
    print("\nBefore Checking out please provide some details!\n");
    print("Enter your Name:- ");
    String personName = stdin.readLineSync()!;
    print("\nEnter Your Contact number:- ");
    String personContact = stdin.readLineSync()!;
    print("\nEnter Your email address:- ");
    String personEmail = stdin.readLineSync()!;

    print("\n==== Your Order ====\n");
    int a = 0;
    List<int> total = [];
    for (var order in cartCheckOut) {
      print(
          "${Cart.quantity[a]} X ${order.name} : total ${order.price * Cart.quantity[a]}rs");
      total.add(order.price * Cart.quantity[a]);
      a++;
    }
    print("\n=====");

    int sum = 0;
    for (var amount in total) {
      sum += amount;
    }
    print("\nTotal Amount: ${sum}rs");
    print("ThankYou for Shopping\n");
    cartCheckOut.clear();
  }

  checkOut(products, cart, obj) {
    print(
        "\nWhat whould you like to do?\n1: Continue Shopping\n2: CheckOut ? ");
    String check = stdin.readLineSync()!;
    switch (check) {
      case '1':
        print("\nTaking towards shopping area!!");
        obj.showProducts(products, cart);
        checkOutArea(cart);
        break;
      case '2':
        checkOutArea(cart);
        break;
      default:
        print("Wrong Input!!");
    }
  }
}

void main(List<String> args) {
  Usb u = Usb("Portable Usb", 250, 300);
  Tshirt t = Tshirt("Polo Tshirts", 500, 600);
  iPhoneX i = iPhoneX("IPhone X A1901", 50, 80000);
  List<Product> products = [u, t, i];

  Cart c = Cart();
  List<Product> cart = [];
  c.showProducts(products, cart);

  Order o = Order();
  o.checkOut(products, cart, c);
}
