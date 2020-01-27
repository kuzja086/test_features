# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

Функциональность: Вывод произвольной информации в лог

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Вывод произвольной информации в лог

	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	И я разворачиваю группу с именем "ГруппаЛогТекст"
	И я изменяю флаг 'Лог выполнения сценариев'
	И в поле с именем 'ИмяФайлаЛогВыполненияСценариев' я ввожу текст 'c:\temp\Лог.txt'
	И я перехожу к следующему реквизиту
	И я перехожу к закладке "Запуск сценариев"
	
	И я загружаю служебную фичу и устанавливаю настройки и выполняю сценарий
			И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляВыводИнформацииВЛог"
			И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
			И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И файл "c:\temp\Лог.txt" содержит строки
		|"Текст11"|
		|"Текст2"|
		|"Текст1Текст3"|
		