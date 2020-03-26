# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA44_Прочая_активность_по_проверке

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838



Функционал: Проверка исправления ошибки компиляции структуры сценария


Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
	
Сценарий: Проверка исправления ошибки компиляции структуры сценария
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ВызовСтруктурыСценарияПроверкаОшибкиКомпиляции"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	
	И     элемент формы с именем "Статистика" стал равен "1/1/5"