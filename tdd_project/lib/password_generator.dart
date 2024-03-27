import 'dart:math';

class PassWord {
  String genPwd(int passwordLenght) {
    var charMin = 'abcdefghijklmnopqrstuvwxyz';
    var charMaj = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    var charNum = '0123456789';
    var char = '$charMin$charMaj$charNum';
    String generatedPassword = List<dynamic>.generate(passwordLenght, (index) {
      return char[Random.secure().nextInt(char.length)];
    }).join('');

    return (passwordLenght < 8) ? 'Error' : generatedPassword;
  }
}
