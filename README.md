iOSDev12BlocksTestHW01
======================
Ученик. Фактически это повторить первую половину.

1. В апп делегате создайте блок с без возвращаемой переменной и без параметров и вызовите его.
2. Создайте блоки с параметрами и передайте туда строку, которую выведите на экран в последствии.
3. Если вы не определили тип данных для ваших блоков, то сделайте это сейчас и используйте их
4. Создайте метод который принимает блок и вызывает его и вызовите этот метод.

Студент.
5. Создайте класс студент с проперти имя и фамилия.
6. Создайте в аппделегате 10 разных студентов, пусть у парочки будут одинаковые фамилии.
7. Поместите всех в массив.
8. Используя соответствующий метод сортировки массива (с блоком) отсортируйте массив студентов сначала по фамилии, а если они одинаковы то по имени.

Мастер.
9. Задание из видео. Из урока о делегатах. У пациентов удалите протокол делегат и соответствующее проперти.
10. Добавьте метод принимающий блок когда им станет плохо.
11. Блок должен передавать указатель на самого студента ну и на те параметры, которые были в задании по делегатам.
12. Теперь когда пациентам поплохеет, они должны вызывать блок, а в блоке нужно принимать решения что делать (доктор не нужен делайте все в апп делегате)

Супермен
13. Познайте истинное предназначение блоков :) Пусть пациентам становится плохо не тогда когда вы их вызываете в цикле(это убрать), а через случайное время 5-15 секунд после создания (используйте специальный метод из урока по селекторам в ините пациента).
14. не забудьте массив пациентов сделать проперти аппделегата, а то все помрут по выходе из функции так и не дождавшись :)
