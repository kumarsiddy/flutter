class ValidationMixin {
  String validateEmail(String email) {
    if (!email.contains("@")) {
      return "Please enter a valid email";
    }
    return null;
  }

  String validatePassword(String password) {
    if (password.length < 4) {
      return "Password is not valid";
    }
    return null;
  }
}
