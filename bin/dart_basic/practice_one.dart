/*
Задача 1
Напишите программу, которая выводит на экран числа от 1 до 100. 
При этом вместо чисел, кратных трем, программа должна выводить слово 
«Super», а вместо чисел, кратных пяти — слово «Quiz». Если число кратно 
и 3, и 5, то программа должна выводить слово «Super Quiz»

Задача 2
Определите количество десятичных цифр в целом числе без знака.
Например, 7 представляет собой одну цифру, 33 имеет 2 цифры, 
а 129955 имеет 6 цифр.
Условие: использовать length нельзя.

Входные данные:
2
555
236455
Выходные данные:
1
3
6

Задача 3
Вам будет дан год, верните тот век, в котором он находится. 
Первый век охватывает период с 1 года до 100 года включительно, 
второй - с 101 года до 200 года включительно и т. д.

Входные данные:
1705
1900
1601
2000
Выходные данные:
18
19
17
20
*/
void main(List<String> args) {
  //firstTask();
  //secondTask(12345);
  thirdTask(1703);
}
void firstTask(){
  bool isMultipleOfThree = false, isMultipleOfFive = false;
  String message = "";
  for(int i = 1; i <= 100; i++){
    isMultipleOfThree = i % 3 == 0;
    isMultipleOfFive = i%5 == 0;
    if(!isMultipleOfThree && !isMultipleOfFive){
      print(i);
    } else {
      if(isMultipleOfThree){
        message += "Super";
      }
      if(isMultipleOfThree && isMultipleOfFive){
        message += " ";
      }
      if(isMultipleOfFive){
        message += "Quiz";
      }
      print(message);
      message = "";
    }
    }
}

void secondTask(number){
  int counter = 1;
  while(number ~/ 10 > 0){
    counter++;
    number ~/= 10;
  }
  print(counter);

}

void thirdTask(int year){
  int century = year ~/100 +1;
  if (year % 10 == 0){
    century--;
  }
  print(century);
}
