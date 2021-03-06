class ValidatorHelper {
  static String validateUsername(String username) {
    if (username.isEmpty) {
      return 'Please provide a username';
    } else if (username.length < 6) {
      return 'Your username needs to be atleast 6 characters';
    }
  }

  static String validateEmail(String email) {
    if (email.isEmpty) {
      return 'Please type an email';
    }
  }

  static String validatePassword(String pass) {
    if (pass.isEmpty) {
      return 'Please provide a password';
    } else if (pass.length < 6) {
      return 'Your password needs to be atleast 6 characters';
    }
  }

  static String isPasswordMatch(String pass, String confirm) {
    if (pass != confirm) {
      return 'Password does not match';
    }
  }
}
