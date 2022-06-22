mixin MixinValidations {
  static isProjectNameValid(String name) {
    RegExp regex = RegExp(r'^[a-z -_A-Z]+$');
    return regex.hasMatch(name);
  }

  static isEmailValid(String email) {
    RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return regex.hasMatch(email);
  }

  static isLengthTooLong(String str) {
    return (str.length < 50);
  }
}
