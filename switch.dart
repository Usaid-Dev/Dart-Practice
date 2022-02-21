void main() {
  int enginesize = 1000;
  if (enginesize >= 2000) {
    print("give me a key");
  } else if (enginesize >= 1800) {
    print("its ohk give me a key");
  } else {
    print("sorry bro");
  }

  switch (enginesize) {
    case 600:
      print("nhi yar is say zyada CC chahiyay");
      break;
    case 800:
      print("is say bhi zyada");
      break;
    case 1000:
      print("or zyada yar");
      break;
    case 1200:
      print("is say bhi upar");
      break;
    case 1800:
      print("is say upar hai to btao wrna chabi do is ki");
      break;
    case 2000:
      print("best ho gaya chabi lao");
      break;
    default:
      print("choro kahi or say dekh lun ga");
  }
}
