﻿# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOn837
@IgnoreOnWeb

@tree


Функционал: Автоматизированное получение шагов сценариев на основе действий пользователя

Как Разработчик я хочу
Чтобы у меня был функционал для получения шагов Gherkin который получен на основе интерактивных действий пользователя
Для того чтобы я мог использовать их в своих сценариях без программирования

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Дано я удаляю все элементы Справочника "Справочник2"

	

Сценарий: Я проверяю кнопки с одинаковым заголовком
	Когда я нажмаю на кнопку Vanessa-Behavior "Начать запись поведения"
#Область Создание элементов шапки	
	И     В панели разделов я выбираю "Основная"
	И     В панели функций я выбираю "Справочник1"
	Тогда открылось окно "Справочник1"
	И     В открытой форме я нажимаю на кнопку с заголовком "Создать"
	Тогда открылось окно "Справочник1 (создание)"
	И     В открытой форме в поле с именем "Наименование" я ввожу текст "Тест"
	И     В открытой форме я перехожу к закладке с заголовком "Проверка кнопок"
	И     В открытой форме я нажимаю на кнопку с именем "ЗаполнитьРекСтрока1"
	И     В открытой форме я нажимаю на кнопку с именем "ЗаполнитьРекСтрока2"

	#Область Проверка реквизитов формы
	И     элемент формы с именем "РекСтрока1" стал равен "Значение1"
	И     элемент формы с именем "РекСтрока2" стал равен "Значение2"
	#КонецОбласти	

	
#КонецОбласти

	И     В открытой форме я нажимаю на кнопку с заголовком "Записать и закрыть"
	И     я нажмаю на кнопку Vanessa-Behavior "Закончить запись поведения"
	
	
	
	
	
Сценарий: Я получаю действия пользователя в виде сценария Gherkin
#Область Подготовка работы сценария
	Когда я удаляю все элементы Справочника "Справочник1"
	Когда я создаю fixtures по макету "Макет"
#КонецОбласти	
	Когда я нажмаю на кнопку Vanessa-Behavior "Начать запись поведения"
	Когда Я нажимаю кнопку командного интерфейса "Основная"
	И     в панели функций я выбираю "Справочник1"
	Тогда открылось окно "Справочник1"
#Область Создание элементов шапки	
	И      в таблице "Список" я перехожу к строке:
		| Код         | Наименование       |
		| "000000002" | Тестовый Элемент 2 |
	И      в таблице "Список" я выбираю текущую строку
	И     открылось окно "Тестовый Элемент * (Справочник1)"
	И Пауза 3
#	И     В открытой форме я открываю выпадающий список с заголовком "Реквизит1"
	И     В открытой форме из выпадающего списка с именем "Реквизит1" я выбираю "ЗначениеПеречисления1"
	И     В открытой форме я выбираю значение реквизита с заголовком "Реквизит2" из формы списка
	Тогда открылось окно "Справочник2"
	И     в таблице "Список" я перехожу к строке:
		| Наименование      |
		| ТестовыйЭлемент21 |
	И     в таблице "Список" я выбираю текущую строку
	Тогда открылось окно "Тестовый Элемент * (Справочник1) *"
	И     В открытой форме в поле с именем "РеквизитЧисло" я ввожу текст "12.34"
	И     В открытой форме в поле с именем "РеквизитСтрока" я ввожу текст "тест"
	И     В открытой форме в поле с именем "РеквизитДата" я ввожу текст "08.04.1981"
	И     В открытой форме я изменяю флаг с заголовком "Реквизит булево"
	И     В открытой форме в поле с именем "Наименование" я ввожу текст "Тест"
	И     В открытой форме я меняю значение переключателя с заголовком "Реквизит переключатель" на "Первое значение"
	
#КонецОбласти

	
#Область Создание элементов таблице
	
	
	И     в таблице "ТабличнаяЧасть1" я нажимаю на кнопку "Добавить"
	И     в таблице "ТабличнаяЧасть1" в поле  "Реквизит число" я ввожу текст "56,78"
	И     в таблице "ТабличнаяЧасть1" в поле  "Реквизит строка" я ввожу текст "ТестСтрока"
	И     в таблице "ТабличнаяЧасть1" в поле  "Реквизит дата" я ввожу текст "11.09.1983"
	И     в таблице "ТабличнаяЧасть1" из выпадающего списка  "Реквизит справочник" я выбираю "ТестовыйЭлемент21"
	И     в таблице "ТабличнаяЧасть1" я изменяю флаг  "Реквизит булево"
	И     в таблице "ТабличнаяЧасть1" я выбираю значение реквизита "Реквизит справочник выбор из формы списка" из формы списка
	Тогда открылось окно "Справочник2"
	И     в таблице "Список" я перехожу к строке:
		| Наименование      |
		| ТестовыйЭлемент21 |
	И     в таблице "Список" я выбираю текущую строку

	
	
#КонецОбласти

	И     В открытой форме я нажимаю на кнопку с заголовком "Записать и закрыть"
	И     я нажмаю на кнопку Vanessa-Behavior "Закончить запись поведения"

	
#Область Проверка работы генератора шагов
	
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'В панели разделов я выбираю "Основная"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'открылось окно "Справочник1"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка ' в таблице "Список" я выбираю текущую строку'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'открылось окно "Тестовый Элемент * (Справочник1)"'
#	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'я открываю выпадающий список "Реквизит1"'
	Если Версия платформы ">=" "8.3.7" Тогда
		Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'из выпадающего списка с именем "Реквизит1" я выбираю по строке \'ЗначениеПеречисления1\''
		
	Если Версия платформы "<" "8.3.12" Тогда
		Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'я выбираю значение реквизита с именем "Реквизит2" из формы списка'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'открылось окно "Справочник2"'
	
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'в таблице "Список" я выбираю текущую строку'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'открылось окно "Тестовый Элемент * (Справочник1) *"'
	
	Если Версия платформы ">=" "8.3.7" Тогда
		Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'я устанавливаю флаг с именем \'РеквизитБулево\''
	Иначе	
		Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'я снимаю флаг с именем \'РеквизитБулево\''
		
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'в таблице "ТабличнаяЧасть1" я нажимаю на кнопку с именем "ТабличнаяЧасть1Добавить"'
	
	Если Версия платформы ">=" "8.3.7" Тогда
		Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'в таблице "ТабличнаяЧасть1" из выпадающего списка с именем "ТабличнаяЧасть1РеквизитСправочник" я выбираю по строке \'ТестовыйЭлемент21\''
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'в таблице "ТабличнаяЧасть1" я изменяю флаг с именем \'ТабличнаяЧасть1РеквизитБулево\''
	Если Версия платформы "<" "8.3.12" Тогда
		Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'в таблице "ТабличнаяЧасть1" я выбираю значение реквизита с именем "ТабличнаяЧасть1РеквизитСправочникВыборИзФормыСписка" из формы списка'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'открылось окно "Справочник2"'
	
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'в таблице "Список" я выбираю текущую строку'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'открылось окно "Тестовый Элемент * (Справочник1) *"'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'в таблице "ТабличнаяЧасть1" из выпадающего списка с именем "ТабличнаяЧасть1РеквизитСправочникВыборИзФормыСписка" я выбираю точное значение \'ТестовыйЭлемент21\''
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'в таблице "ТабличнаяЧасть1" я завершаю редактирование строки'
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'я нажимаю на кнопку "Записать и закрыть"'

#КонецОбласти
	