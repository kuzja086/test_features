﻿#ВариантСогласования=Отказался от ремонта
#ВидРемонта=Платный
#Номенклатура=Техника для ремонта
#НомерТелефона=+79899899988
#Отказ=Истина
#Покупатель=$$$$Покупатель$$$$
#СерийныйНомер=$$$$СерийныйНомер$$$$
#СсылкаНаДокументПриема=$$$$СсылкаНаДокументПриема$$$$

#language: ru
@tree
#report.feature=Ремонты
#report.story=Ремонты
Функциональность: Платный ремонт с отказом покупателя

@КодНастройкиПроцесса=000000002
@ПолныйКодПроцесса=04.02
Сценарий: Платный ремонт с отказом покупателя

@КодСценария=000000006
* Сценарий: Создание поступления техники для ремонта
	И я подключаю TestClient "Менеджеры" логин "Менеджеры" пароль ""
	И я закрыл все окна клиентского приложения
	//И В командном интерфейсе я выбираю 'Первый бытовой' 'Рабочее место оператора'
	//Тогда открылось окно 'Рабочее место оператора'
	Когда в поле 'Номер телефона' я ввожу текст "+79899899988"
	И я перехожу к следующему реквизиту
	И я запоминаю значение поля с именем "ЛидКонтрагент" как '$$$$Покупатель$$$$'
	И я запоминаю строку "Платный" в переменную "ВидРемонта"
	Если переменная "ВидРемонта" имеет значение "Платный" Тогда
			И я нажимаю на кнопку 'Создать платный ремонт'
	Иначе
			И я нажимаю на кнопку 'Создать гарантийный ремонт'

	Тогда открылось окно 'Прием и передача в ремонт (создание)'
	Тогда элемент формы с именем "Контрагент" стал равен "$$$$Покупатель$$$$"
	Тогда элемент формы с именем "тлВидРемонта" стал равен "Платный"
	Тогда элемент формы с именем "Номенклатура" стал равен "Техника для ремонта"
	И я нажимаю на кнопку 'Сформировать штрихкод'
	И я запоминаю значение поля с именем "СерийныйНомер" как '$$$$СерийныйНомер$$$$'
	И я перехожу к следующему реквизиту
	И из выпадающего списка "Марка" я выбираю по строке 'Ariston'
	И я перехожу к следующему реквизиту
	И из выпадающего списка "Марка" я выбираю по строке 'Ariston'
	И я перехожу к следующему реквизиту
	И из выпадающего списка "Модель" я выбираю по строке 'F1015J'
	И я перехожу к следующему реквизиту
	И в поле 'Комплектация' я ввожу текст 'Комплектация'
	И я перехожу к следующему реквизиту
	И в поле 'Мех. повреждения' я ввожу текст 'Повреждения'
	И в поле 'Содержание' я ввожу текст 'Не работает что-то'
	И я нажимаю на кнопку 'Печать этикеток'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку 'OK'
	Тогда открылось окно 'Печать этикеток и ценников'
	И я нажимаю на кнопку 'Печать'
	Тогда открылось окно 'Печать документа'
	И я жду когда в табличном документе "ТекущаяПечатнаяФорма" заполнится ячейка "R1C1" в течение 3 секунд
	//Доделать
	//Дано Табличный документ "ТекущаяПечатнаяФорма" равен макету "Этикетка"
	И Я закрываю окно 'Печать документа'
	Тогда открылось окно 'Печать этикеток и ценников'
	И Я закрываю окно 'Печать этикеток и ценников'
	Тогда открылось окно 'Прием и передача в ремонт * от * (не проведен)'
	И я нажимаю на кнопку 'Акт приемки/передачи'
	Тогда открылось окно 'Печать документа'
	И я жду когда в табличном документе "ТекущаяПечатнаяФорма" заполнится ячейка "R1C1" в течение 3 секунд
	//Доделать
	//Дано Табличный документ "ТекущаяПечатнаяФорма" равен макету "Акт"
	И Я закрываю окно 'Печать документа'
	Тогда открылось окно 'Прием и передача в ремонт * от * (не проведен)'
	И я перехожу к закладке "Выполнение ремонта"
	И я изменяю флаг ' Принята в ремонт'
	//И элемент формы с именем "тлДатаПринятияВРемонт" не доступен
	//И элемент формы с именем "тлТехникаПринятаВРемонт" не доступен
	Затем я жду, что в сообщениях пользователю будет подстрока "установлен статус" в течение 3 секунд
	Тогда элемент формы с именем "СуммаДокумента" стал равен "500,00"
	//Доделать
	//И таблица "тлРаботы" стала равной по шаблону:
	  //      | Работа        | Количество | Цена   | Сумма  |
	    //    | "Диагностика" | 1,000      | 500,00 | 500,00 |
	И я нажимаю на кнопку 'Получить навигационную ссылку'
	И я запоминаю значение поля с именем "тлНавигационнаяСсылка" как '$$$$СсылкаНаДокументПриема$$$$'
	И я очищаю окно сообщений пользователю
	И Я закрываю окно 'Прием и передача в ремонт * от *'


@КодСценария=000000013
* Сценарий: Считывание штрихкодов техники (Изменение статуса)
	И я подключаю TestClient "Мастер" логин "Мастер" пароль ""
	И я закрыл все окна клиентского приложения
	И в поле с именем "Штрихкод" я ввожу текст "$$$$СерийныйНомер$$$$"
	Когда я нажимаю на кнопку 'Обработать штрихкод'
	Затем я жду, что в сообщениях пользователю будет подстрока "установлен статус" в течение 3 секунд
	И я очищаю окно сообщений пользователю


@КодСценария=000000015
* Сценарий: Заполнение работ по ремонтам
	И я подключаю TestClient "Мастер" логин "Мастер" пароль ""
	И я закрыл все окна клиентского приложения
	И в поле с именем "Штрихкод" я ввожу текст "$$$$СерийныйНомер$$$$"
	Когда я нажимаю на кнопку 'Обработать штрихкод'
	И в таблице "тлРаботы" я нажимаю на кнопку с именем 'тлРаботыДобавить'
	//И в таблице "тлРаботы" я нажимаю кнопку выбора у реквизита "Работа"
	//Тогда открылось окно 'Выбор типа данных'
	//И я нажимаю на кнопку 'ОК'
	//Тогда открылось окно 'Прием и передача в ремонт * от * *'
	И в таблице "тлРаботы" в поле 'Работа' я ввожу текст 'Замена барабана'
	И в таблице "тлРаботы" я активизирую поле "Количество"
	И в таблице "тлРаботы" в поле 'Количество' я ввожу текст '1,000'
	И в таблице "тлРаботы" я завершаю редактирование строки
	И в таблице "тлРаботы" я нажимаю на кнопку с именем 'тлРаботыДобавить'
	И в таблице "тлРаботы" в поле 'Работа' я ввожу текст 'Замена шланга'
	И в таблице "тлРаботы" я активизирую поле "Количество"
	И в таблице "тлРаботы" в поле 'Количество' я ввожу текст '2,000'
	И в таблице "тлРаботы" я завершаю редактирование строки
	И я нажимаю на кнопку 'Зафиксировавть работы'
	Затем я жду, что в сообщениях пользователю будет подстрока "установлен статус" в течение 3 секунд
	И я очищаю окно сообщений пользователю
	И я закрываю сеанс TESTCLIENT


@КодСценария=000000016
* Сценарий: Согласование с клиентом (Отказ)
	И я подключаю TestClient "Менеджеры" логин "Менеджеры" пароль ""
	И я закрыл все окна клиентского приложения
	Дано Я открываю навигационную ссылку "$$$$СсылкаНаДокументПриема$$$$"
	Тогда открылось окно 'Прием и передача в ремонт * от *'
	И я перехожу к закладке "Выполнение ремонта"
	И в таблице "тлРаботы" я перехожу к строке:
	| 'Работа'        |
	| 'Замена шланга' |
	И в таблице "тлРаботы" я активизирую поле "Цена"
	И в таблице "тлРаботы" я выбираю текущую строку
	И в таблице "тлРаботы" в поле 'Цена' я ввожу текст '1 000,00'
	И в таблице "тлРаботы" я завершаю редактирование строки
	И в таблице "тлРаботы" я перехожу к строке:
	| 'Работа'          |
	| 'Замена барабана' |
	И в таблице "тлРаботы" я активизирую поле "Цена"
	И в таблице "тлРаботы" я выбираю текущую строку
	И в таблице "тлРаботы" в поле 'Цена' я ввожу текст '1 000,00'
	И в таблице "тлРаботы" я завершаю редактирование строки
	И в таблице "тлРаботы" я снимаю флаг 'Согласие на работу'
	И в таблице "тлРаботы" я завершаю редактирование строки
	И я нажимаю на кнопку 'Провести'
	И из выпадающего списка "тлВариантСогласованияРемонта" я выбираю точное значение "Отказался от ремонта"
	И я запоминаю строку "Думает" в переменную "ВариантСогласования"
	Если переменная "ВариантСогласования" имеет значение "Отказался от ремонта" Тогда
			   //Оптимальнее пока не нашел   
	Иначе
			И я устанавливаю флаг 'тлСогласованиеРемонта'
			Затем я жду, что в сообщениях пользователю будет подстрока "установлен статус" в течение 3 секунд

	И Я закрываю окно 'Прием и передача в ремонт * от *'
	И я очищаю окно сообщений пользователю


@КодСценария=000000021
* Сценарий: Возврат техники
	И я подключаю TestClient "Менеджеры" логин "Менеджеры" пароль ""
	И я закрыл все окна клиентского приложения
	Дано Я открываю навигационную ссылку "$$$$СсылкаНаДокументПриема$$$$"
	Тогда открылось окно 'Прием и передача в ремонт * от *'
	И я перехожу к закладке "Выполнение ремонта"
	И я запоминаю строку "Ложь" в переменную "Отказ"
	Если переменная "Отказ" имеет значение "Истина" Тогда
			И из выпадающего списка с именем "тлГарантия" я выбираю точное значение '1 месяц'

	И я изменяю флаг 'ВыдачаИзРемонта'
	Затем я жду, что в сообщениях пользователю будет подстрока "установлен статус" в течение 3 секунд
	И Я закрываю окно 'Прием и передача в ремонт * от *'
	И я закрываю сеанс TESTCLIENT
