# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA44_Прочая_активность_по_проверке

@tree
@IgnoreOnOFBuilds
@IgnoreOn82Builds
@IgnoreOnWeb

Функционал: Проверка работы структуры сценария
	Как Разработчик
	Я Хочу чтобы я мог использовать структуру сценария
	Чтобы я мог использовать такие сценарии
 

Контекст:
	Дано Я открываю VanessaAutomation в режиме TestClient 
 
Сценарий: Передач параметра во вложенный сценарий первого и второго уровня
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "СтруктураСценарияОдинШагОдинПараметр"
	И я перехожу к закладке с именем "ГруппаКаталогиБиблиотек"
	Если поле с именем "ВерсияПоставки" имеет значение "standart" тогда
		И В открытой форме я нажимаю на кнопку с именем "КаталогиБиблиотекДобавить"
		И я добавляю в библиотеки строку с стандартной библиотекой "Libraries"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И     таблица формы с именем "ДеревоТестов" стала равной:
		| 'Наименование'                                                 |
		| 'СтруктураСценарияОдинШагОдинПараметр.feature'                 |
		| 'Закупка товаров и услуг 2'                                      |
		| 'Перемщение по группам и фасовка'                              |
		| 'И     В открытой форме в поле   "InputFld" я ввожу текст    <ШК>' |
		| *                                                              |
		| *                                                              |
		| *                                                              |
		| 'И     В открытой форме в поле   "InputFld" я ввожу текст    "2200001008004"' |
		| *                                                              |
		| 'И     В открытой форме в поле   "InputFld" я ввожу текст    2200001015504' |