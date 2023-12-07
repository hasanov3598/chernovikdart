import 'dart:io';

int binarySearchGuess(int low, int high) {
  return ((high - low) / 2).floor() + low;
}

void main() {
  print('Добро пожаловать в игру угадывания числа от 1 до 100!');
  print(
      'Загадайте число, и я постараюсь угадать его с использованием двоичного поиска.');

  int low = 1;
  int high = 100;
  String userResponse;

  do {
    int guess = binarySearchGuess(low, high);

    print('Мой вариант: $guess');
    stdout.write('Это ваше число? (Введите "mine", "more" или "less"): ');
    userResponse = stdin.readLineSync()!.toLowerCase();

    if (userResponse == 'mine') {
      print('Ура! Я угадал число $guess!');
    } else if (userResponse == 'more') {
      low = guess + 1;
    } else if (userResponse == 'less') {
      high = guess - 1;
    } else {
      print('Пожалуйста, введите "мine", "more" или "less".');
    }
  } while (userResponse != 'mine');
}
