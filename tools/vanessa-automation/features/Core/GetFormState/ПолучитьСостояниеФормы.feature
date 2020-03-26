# language: ru
# encoding: utf-8
#parent uf:
@UF3_формирование_features
#parent ua:
@UA32_Создание_фиче_файлов

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839

@tree

Функционал: Получить состояние формы
 

Сценарий: Получить состояние формы
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе
	
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я устанавливаю флаг с именем 'DebugLog2'
	И я перехожу к закладке с именем "ГруппаДополнительно"
	И я нажимаю на кнопку с именем 'ОткрытьПодключитьTestClient'

	Затем я жду, что в сообщениях пользователю будет подстрока "TestClient подключен" в течение 60 секунд

	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ПолучитьСостояниеФормы/ПолучитьСостояниеФормы"
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient


	И я перехожу к закладке с именем "ГруппаДополнительно"
	И я нажимаю на кнопку с именем 'ЗапомнитьСостояниеФормыTestClient'
	И пауза 2
	И я нажимаю на кнопку с именем 'ЗабытьСостояниеФормыTestClient'
	И пауза 2
	И я нажимаю на кнопку с именем 'ПолучитьИзмененияФормыGherkin'
	И пауза 2
	И я нажимаю на кнопку с именем 'ПолучитьСостояниеТекущегоЭлементаФормы'
	И пауза 2

	И я жду, что поле с именем "СгенерированныйСценарий" перестанет быть пустым в течение 30 секунд


	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"

	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

Сценарий: Закрыть TestClient
	И я закрываю TestClient "TM"	
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'