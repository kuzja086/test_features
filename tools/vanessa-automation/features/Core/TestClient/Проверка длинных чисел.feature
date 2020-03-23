# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds




Функционал: Проверка сравнение длинных чисел в ТЧ

Как разработчик
Я хочу чтобы корректно сравнивать длинные числа в ТЧ
Чтобы я мог сравнивать значения таблиц

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка сравнение длинных чисел в ТЧ
	Когда В панели разделов я выбираю "Основная"
	И     В панели функций я выбираю "Справочник1"
	Тогда открылось окно "Справочник1"
	И     я нажимаю на кнопку "Создать"
	Тогда открылось окно "Справочник1 (создание)"
	И     в таблице "ТабличнаяЧасть1" я нажимаю на кнопку "Добавить"
	И     в таблице "ТабличнаяЧасть1" в поле "Реквизит число" я ввожу текст "12 345,00"
	И     в таблице "ТабличнаяЧасть1" я завершаю редактирование строки

		И     таблица формы с именем "ТабличнаяЧасть1" стала равной:
		| 'Реквизит число' |
		| '12 345,00'      |

