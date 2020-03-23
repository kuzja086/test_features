# language: ru

@IgnoreOnCIMainBuild
@ExportScenarios
@tree


Функциональность: ДляПроверкаВыполненияСценарияПередачаТаблицы

 

Сценарий: Подсценарий принимающий таблицу
	Дано Я задаю таблицу строк "ТаблицаИсключений"
			| 'Товар1' |
			| 'Товар2' |

Сценарий: Как понять где разошлись макеты

		
	*Группа1
		И Я запоминаю значение выражения '1' в переменную "ИмяПеременной"
		Если "Истина" Тогда
			И Я запоминаю значение выражения '2' в переменную "ИмяПеременной"
		
	*Группа2
		И подсценарий принимающий таблицу
			|'ЭлементТаблицы1' | 'ЭлементТаблицы2' |
			|'ЭлементТаблицы1' | 'ЭлементТаблицы2' |
