# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb




Функционал: Проверка копирования профиля клиента тестирования

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

	
Сценарий: Проверка копирования профиля клиента тестирования
	И я перехожу к закладке с именем "ГруппаНесколькоКлиентовТестирования"
	И в таблице "ДанныеКлиентовТестирования" я активизирую поле с именем "ДанныеКлиентовТестированияДопПараметры"
	И в таблице "ДанныеКлиентовТестирования" я выбираю текущую строку
	И в таблице "ДанныеКлиентовТестирования" в поле с именем 'ДанныеКлиентовТестированияДопПараметры' я ввожу текст '/N\"\" /DEBUG'
	И в таблице "ДанныеКлиентовТестирования" я завершаю редактирование строки
		
	И я перехожу к закладке с именем "ГруппаСлужебная"
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиКопированияПрофиля"
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И я перехожу к закладке с именем "ГруппаНесколькоКлиентовТестирования"
	И в таблице "ДанныеКлиентовТестирования" я перехожу к строке:
		| 'Имя'        |
		| 'ИмяПрофиля' |
		
	И я запоминаю значение таблицы "ДанныеКлиентовТестирования" поля с именем "ДанныеКлиентовТестированияДопПараметры" как "ДопПараметры"
	И выражение внутреннего языка 'Найти($ДопПараметры$,"/DEBUG") > 0' Истинно
