# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA44_Прочая_активность_по_проверке

@IgnoreOn82Builds
@IgnoreOnOFBuilds

@tree


Функционал: Проверка работы со значениями переменных


Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

	
Сценарий: Проверка работы со значениями переменных
	Когда В панели разделов я выбираю "Основная"
	И     В панели функций я выбираю "Справочник1"
	Тогда открылось окно "Справочник1"
	И     я нажимаю на кнопку "Создать"
	И     я запоминаю значение выражения '"Тест1"' в переменную "ПеременнаяТест" глобально
	И     в поле с именем "Наименование" я ввожу текст '$$ПеременнаяТест$$'
	И     я перехожу к следующему реквизиту
	И     элемент формы с именем "Наименование" стал равен 'Тест1'

	И     я запоминаю значение выражения '"Тест2"' в переменную "ПеременнаяТест с пробелом" глобально
	И     в поле с именем "Наименование" я ввожу текст '$$ПеременнаяТест с пробелом$$'
	И     я перехожу к следующему реквизиту
	И     элемент формы с именем "Наименование" стал равен 'Тест2'

	
	#работа с ТЧ
	И     в таблице "ТабличнаяЧасть1" я нажимаю на кнопку 'Добавить'
	И     в таблице "ТабличнаяЧасть1" я активизирую поле "Реквизит строка"
	И     в таблице "ТабличнаяЧасть1" в поле "Реквизит строка" я ввожу текст 'Тест1'
	И     в таблице "ТабличнаяЧасть1" я завершаю редактирование строки
	И     в таблице "ТабличнаяЧасть1" я добавляю новую строку
	И     в таблице "ТабличнаяЧасть1" я активизирую поле "Реквизит число"
	И     я перехожу к следующему реквизиту
	И     в таблице "ТабличнаяЧасть1" я активизирую поле "Реквизит строка"
	И     в таблице "ТабличнаяЧасть1" в поле "Реквизит строка" я ввожу текст 'Тест2'
	И     я перехожу к следующему реквизиту
	И     в таблице "ТабличнаяЧасть1" я активизирую поле "Реквизит дата"
	И     в таблице "ТабличнаяЧасть1" я завершаю редактирование строки
	И     в таблице "ТабличнаяЧасть1" я добавляю новую строку
	И     в таблице "ТабличнаяЧасть1" я активизирую поле "Реквизит число"
	И     я перехожу к следующему реквизиту
	И     в таблице "ТабличнаяЧасть1" я активизирую поле "Реквизит строка"
	И     в таблице "ТабличнаяЧасть1" в поле "Реквизит строка" я ввожу текст 'Тест3'
	И     в таблице "ТабличнаяЧасть1" я завершаю редактирование строки
	
	И     я запоминаю значение выражения '"Тест1"' в переменную "ПеременнаяТЧТест" глобально
	И     в таблице "ТабличнаяЧасть1" я перехожу к строке:
		| 'Реквизит строка'        |
		| '$$ПеременнаяТЧТест$$'   |
	
	Тогда текст ячейки таблицы "ТабличнаяЧасть1" "ТабличнаяЧасть1РеквизитСтрока" стал равен "Тест1"
	
	И     я запоминаю значение выражения '"Тест2"' в переменную "ПеременнаяТЧТест с пробелом" глобально
	И     в таблице "ТабличнаяЧасть1" я перехожу к строке:
		| 'Реквизит строка'                   |
		| '$$ПеременнаяТЧТест с пробелом$$'   |
		
	Тогда текст ячейки таблицы "ТабличнаяЧасть1" "ТабличнаяЧасть1РеквизитСтрока" стал равен "Тест2"
		