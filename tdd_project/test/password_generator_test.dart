import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_project/password_generator.dart';

void main() {
  late PassWord password;

  setUp(() {
    password = PassWord();
  });

  group('genPwd', () {
    const String goodPassword = 'uTop58cNq';

    test(
      'doit retourner "Error" si le nombre entré est inférieur à 8',
      () async {
        // Act
        final result = password.genPwd(3);

        // Assert
        expect(result, 'Error');
      },
    );

    test(
      'doit retourner un mot de passe dont la taille est égale au paramètre entré',
      () async {
        // Act
        final result = password.genPwd(9);

        // Assert
        expect(result.length, goodPassword.length);
      },
    );
    test(
      'doit contenir au moins une lettre en minuscule',
      () async {
        // Act
        final result = password.genPwd(9);

        // Assert
        expect(result, contains(RegExp('[a-z]')));
      },
    );

    test(
      'doit contenir au moins une lettre en majuscule',
      () async {
        // Act
        final result = password.genPwd(9);

        // Assert
        expect(result, contains(RegExp('[A-Z]')));
      },
    );

    test(
      'doit contenir au moins un chiffre',
      () async {
        // Act
        final result = password.genPwd(9);

        // Assert
        expect(result, contains(RegExp('[0-9]')));
      },
    );
  });
}
