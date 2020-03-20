# language: ru
#parent uf:
@UF2_запуск_сценариев_на_выполнение
#parent ua:
@UA14_Останавливать_выполнение_сценариев

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

Функционал: Остановка и продолжение выполнения сценария перед началом сценария
	Как Разработчик
	Я Хочу чтобы у меня была возможность поместить файл в процедуре перед началом сценария и использовать ЗапретитьВыполнениеШагов
	Чтобы это не вызывало ошибок в отдельном сеансе

	
Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	
Сценарий: Остановка и продолжение выполнения сценария перед началом сценария
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ПомещениеФайлаПередНачаломСценарияTemplate"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                               | 'Статус'  |
		| 'ПомещениеФайлаПередНачаломСценарияTemplate.feature'                         | ''        |
		| 'Остановка и продолжение выполнения сценария при помещении файла template'   | ''        |
		| 'Остановка и продолжение выполнения сценария при помещении файла template 1' | 'Success' |
		| 'Когда Сценарий выполнен без ошибок Template'                                | 'Success' |
		| 'Остановка и продолжение выполнения сценария при помещении файла template 2' | 'Success' |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной"'        | 'Success' |


	