class StringHelper {
  static final StringHelper _singleton = StringHelper._internal();

  factory StringHelper() {
    return _singleton;
  }

  StringHelper._internal();


  static const String logIn="Log In";
  static const String enterEmail="Enter Email";
  static const String enterPassword="Enter Password";


}
