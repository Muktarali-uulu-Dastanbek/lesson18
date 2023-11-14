import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // task1(null);
  // task2(null, null);
  // task4();
  // task5();
  task6(name: "Samsung", model: "M31S", color: "Black", weight: "250g");
}

void task1(String? a) {
  print(a ?? "Ошибка");
}

void task2(int? a, int? b) {
  print((a ?? 1) + (b ?? 2));
}

void task3() {
  print("Введите свое имя");
  String? name = stdin.readLineSync();
  print("Введите свой возраст");
  String? age = stdin.readLineSync();
  print(
      "Вас зовут - ${name ?? "(Имя не указано)"}, возраст - ${age ?? "(Возраст не указано)"}.");
}

void task4() {
  stdout.write("vvedite chislo: ");
  int? a = int.tryParse(stdin.readLineSync()!);
  // a = null;
  print("chislo = $a");
  if (a != null) {
    if (a > 3) {
      a += 10;
    } else {
      a -= 10;
    }
  }
  print(a);
}

void task5() {
  bool? isRain;
  print("На улице идёт дождь? - Ответьте 'da' или 'net'");
  String userAnswer = stdin.readLineSync()!;
  if (userAnswer == "") {
    isRain = false;
  } else if (userAnswer == "da" || userAnswer == "Da") {
    isRain = true;
  } else if (userAnswer == "net") {
    isRain = false;
  }
  isRain! ? print("vozmite zont") : print("zont ne nujen");
}

void task6({
  required String name,
  required String model,
  required String color,
  String? height,
  String? width,
  String? weight,
}) {
  print("About the phone");
  print("Name: $name");
  print("Model: $model");
  print("Color: $color");
  print("Height: ${height ?? "-"}");
  print("Width: ${width ?? "-"}");
  print("Weight: ${weight ?? "-"}");
}
