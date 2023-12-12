import 'dart:io';

void main() {
  
  stdout.write('Введіть перше число: ');
  double num1 = double.parse(stdin.readLineSync()!);

  // Введення другого числа
  stdout.write('Введіть друге число: ');
  double num2 = double.parse(stdin.readLineSync()!);

  // Введення операції
  stdout.write('Виберіть операцію (+, *, /, -): ');
  String operation = stdin.readLineSync()!;

  // Виконання вибраної операції та виведення результату
  switch (operation) {
    case '+':
      print('Сума: ${num1 + num2}');
      break;
    case '*':
      print('Множення: ${num1 * num2}');
      break;
    case '/':
      if (num2 != 0) {
        print('Ділення: ${num1 / num2}');
      } else {
        print('Помилка: Ділення на нуль неможливе.');
      }
      break;
    case '-':
      print('Різниця: ${num1 - num2}');
      break;
    default:
      print('Помилка: Невідома операція.');
  }
}
