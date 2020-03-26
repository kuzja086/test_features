# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA27_Макеты_для_проверки_парсинга

@IgnoreOnCIMainBuild
@Tree

Функционал: Проверка работы сценария тег tree часть три

Как Разработчик
Я хочу проверить работоспособность биллинга 
Чтобы Михалыч был доволен 

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

				Сценарий: Проверка работы сценария тег tree часть три

	И ПерваяГруппа
		И ВтораяГруппа
			И ТретьяГруппа
		И ЧетвертаяГруппа
			И ПятаяГруппа
			
	И СедьмаяГруппа
	И ВосьмаяГруппа
		И ДевятаяГруппа
			Когда я создаю Спецификацию с датой начала периода действия "01.01.2017"
		И Добавить "Поставку" с января по правилу "Постоянная: КЮ за аванс 2 мес.+ 1 мес и КД подарок"
			И     в ТЧ "УсловияСпецификации" я нажимаю на кнопку "Поставка"
			Тогда открылось окно "Поставка новых дистрибутивов (создание)"
			И     я открываю выпадающий список "Прейскурант"
	И ДесятаяГруппа
		Когда Создать новую пару партнера и контрагента
			Когда Я создаю и запоминаю ПартнераИКонтрагента с случайными реквизитами
		Тогда я проверяю что он создался
			Тогда открылось окно "Партнеры"
			И  в списке есть запомненый Партнер
	И ОдиннадцатаяГруппа
	И ДвенадцатаяГруппа
		Когда Создать новую пару партнера и контрагента
			Когда Я создаю и запоминаю ПартнераИКонтрагента с случайными реквизитами
		Тогда я проверяю что он создался
			Тогда открылось окно "Партнеры"
			И  в списке есть запомненый Партнер
	И ТринадцатаяГруппа
	И ЧетырнадцатаяГруппа