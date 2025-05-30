# asm_exercises


### Практическое занятие 1

#### Задание №4.1

Пусть h, m и s — байтовые переменные, а t — переменная типа long. Считая, что 
от начала суток прошло h часов (0 ≤ h < 24), m минут и s секунд ( 0 ≤ m < 60 , 0 ≤ s 
< 60), определить, сколько всего секунд прошло от начала суток к этому моменту 
времени. Ответ записать в t и вывести на экран.

## Данные для проверки

| h   | m   | s   | t     |
|-----|-----|-----|-------|
| 10  | 32  | 14  | 37934 |
| 23  | 59  | 59  | 86399 |
| 0   | 0   | 0   | 0     |


#### Задание №4.2

Пусть t — переменная типа long, а h , m и s — байтовые переменные. Считая, что 
прошло t секунд (0 ≤ t < 86400) от начала суток, определить, сколько полных часов
(h), минут (m) и секунд (s) прошло к этому моменту времени. Вывести результат 
на экран в следующем формате: h:m:s. Например, для t=37934 вывести: 10:32:14.

## Данные для проверки

| h   | m   | s   | t     |
|-----|-----|-----|-------|
| 10  | 32  | 14  | 37934 |
| 23  | 59  | 59  | 86399 |
| 0   | 0   | 0   | 0     |


#### Задание №4.3

Написать программу, которая считывает число без знака N (N ≥ 0) из терминала.
Вычислить и напечатать (в отдельных строках) значение выражений N div 10, N 
mod 10.
Считывать число в %rax , не использовать переменные для хранения чисел.

## Данные для проверки

| h   | m   | s   | t     |
|-----|-----|-----|-------|
| 10  | 32  | 14  | 37934 |
| 23  | 59  | 59  | 86399 |
| 0   | 0   | 0   | 0     |



### Практическое занятие 2

#### Задание №5.1

С клавиатуры вводится символ — маленькая латинская буква.
Напечатать её номер в алфавите (считать, что у буквы a номер 1).

## Данные для проверки

| символ | номер |
|--------|-------|
| a      | 1     |
| i      | 9     |
| z      | 26    |

#### Задание №5.2

С клавиатуры вводится символ — большая латинская буква.
Напечатать соответствующую маленькую английскую букву.

## Данные для проверки

| ВВОД | ВЫВОД |
|------|-------|
| A    | a     |
| I    | i     |
| Z    | z     |

#### Задание №5.3

Ввести число n, 1 ≤ n ≤ 26
а) Напечатать первые n букв английского алфавита.
б) Напечатать n последних букв английского алфавита.

## Данные для проверки

| n   | ввод                     | вывод                    |
|-----|--------------------------|--------------------------|
| 1   | a                        | z                        |
| 9   | abcdefghi                | rstuvwxyz               |
| 26  | abcdefghijklmnopqrstuvwxyz | abcdefghijklmnopqrstuvwxyz |



### Практическое занятие 3

#### Задание №6.1
Дан текст — непустая последовательность символов, за которой следует нулевой
байт. Посчитать, сколько раз в тексте встречаются прописные английские буквы
('A' , 'B' , ..., 'Z'). Вывести результат на экран.

## Данные для проверки

| ввод        | ВЫВОД |
|-------------|-------|
| As$@[j]LoP  | 3     |
| A           | 1     |
| blabla      | 0     |

#### Задание №6.2

На вход последовательно подаются числа без знака, за последовательностью
следует 0 Определить и напечатать наибольшее число последовательности.

## Данные для проверки

| ввод               | вывод |
|--------------------|-------|
| 1, 2, 3, 4, 5, 6, 7, 8, 9, 0 | 9     |
| 10, 25, 15, 17, 0   | 25    |
| 5, 0                | 5     |

#### Задание №6.3 

На вход последовательно подаются числа без знака, за последовательностью
следует 0 Определить, является ли эта последовательность возрастающей.
Напечатать ответ («Является» или «Нет»).

## Данные для проверки

| ввод               | вывод   |
|--------------------|---------|
| 1, 2, 3, 4, 5, 6, 7, 8, 9, 0 | YES |
| 10, 25, 15, 17, 0   | NO     |
| 1, 2, 3, 4, 5, 0    | NO     |
| 1, 0                | YES |



#### Задание №7.1

Вводится последовательность из 15 чисел без знака (байты). Записать их в
массив. Напечатать элементы массива, являющиеся нечётными числами, в
порядке их вхождения в последовательность.

## Данные для проверки

| ВХОД | ВЫХОД |
|------|-------|
| 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 | 1, 3, 5, 7, 9, 11, 13, 15 |
| 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 |
| 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 |  |



#### Задание №7.2

Вводится последовательность из 15 различных чисел без знака (байты).
Вычислить два наибольших числа последовательности.

## Данные для проверки

| ВХОД | ВЫХОД |
|------|-------|
| 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 | 15, 14 |
| 127, 2, 125, 27, 80, 50, 40, 30, 20, 10, 120, 124, 101, 90, 32 | 127, 125 |






