# language: ru
# encoding: utf-8
#parent uf:
@UF4_Библиотека_шагов
#parent ua:
@UA8_Прочее

@IgnoreOnOFBuilds
@IgnoreOn836
@IgnoreOn839
@IgnoreOnWeb
@IgnoreOnUFSovm82Builds
@IgnoreOn82Builds


Функционал: Я хочу проверить создание и изменение объектов ИБ

Как автотестировщик я хочу иметь возможность 
создавать объекты ИБ программно

Контекст:
	Дано я запоминаю строку "Элемент #1" в переменную "Наименование1"
	Дано я запоминаю строку "Элемент #2" в переменную "Наименование2"
	Дано я запоминаю строку "Элемент #3" в переменную "Наименование3"
	И Я запоминаю значение выражения 'ТекущаяДата()' в переменную "ТекущаяДата"
Сценарий: Я создаю элемент справочника

	Когда я программно создаю элемент справочника "Справочник1" с реквизитами
	| Наименование | $Наименование1$ |
	| Реквизит1 | ЗначениеПеречисления1 |

	Тогда существует элемент справочника "Справочник1" с "Наименование" равным "$Наименование1$"

Сценарий: Я создаю элемент справочника если он не существует
	Если не существует элемент справочника "Справочник2" с "Наименование" равным "$Наименование2$" Тогда
		И я программно создаю элемент справочника "Справочник2" с реквизитами
		| Наименование | $Наименование2$ |
	Если существует элемент справочника "Справочник2" с "Наименование" равным "$Наименование2$" Тогда
		Тогда я программно изменяю элемент справочника "Справочник2" с "Наименование" равным "$Наименование2$" установив реквизиты
		| Код | 9999 |
	И я сохраняю в переменную "ЭлементСправочника2" ссылку на справочник "Справочник2" с реквизитами
		| Наименование    | $Наименование2$ |
		| Код | 9999 |
	И я вывожу значение переменной "ЭлементСправочника2"

Сценарий: Я изменяю элемент справочника

	Дано я сохраняю в переменную "ЭлементСправочника2" ссылку на справочник "Справочник2" с реквизитами
		| Наименование    | $Наименование2$ |
		| Код | 9999 |
	Когда существует элемент справочника "Справочник1" с реквизитами
	| Наименование | $Наименование1$ |
	| Реквизит1 | ЗначениеПеречисления1 |
	И я программно изменяю элемент справочника "Справочник1" с "Наименование" равным "$Наименование1$" установив реквизиты
	| Реквизит1 | ЗначениеПеречисления2 |
	| Реквизит2 | $ЭлементСправочника2$ |
	| РеквизитСтрока | $ЭлементСправочника2$ |
	| РеквизитСтрока | $ЭлементСправочника2$ |
	| РеквизитДата | $ТекущаяДата$ |
	| РеквизитБулево | Да |
	| РеквизитЧисло | 0 |
	| РеквизитПереключатель | 1 |
	| Реквизит3 | $ЭлементСправочника2$ |

	Тогда не существует элемент справочника "Справочник1" с "Реквизит1" равным "ЗначениеПеречисления1"
	И не существует элемент справочника "Справочник1" с реквизитами 
	| Наименование | $Наименование1$ |
	| Реквизит1 | ЗначениеПеречисления1 |
	И существует элемент справочника "Справочник1" с "Реквизит1" равным "ЗначениеПеречисления2"
	И существует элемент справочника "Справочник1" с реквизитами 
	| Наименование | $Наименование1$ |
	| РеквизитДата | $ТекущаяДата$ |

Сценарий: Установка составного реквизита
	Дано я сохраняю в переменную "ЗначениеСоставногоРеквизита" ссылку на справочник "Справочник2" с "Наименование" равным "$Наименование2$"
	И я программно изменяю элемент справочника "Справочник1" с "Наименование" равным "$Наименование1$" установив реквизиты
	| СоставнойРеквизит | $ЗначениеСоставногоРеквизита$ |
	И существует элемент справочника "Справочник1" с реквизитами 
	| Наименование | $Наименование1$ |
	| СоставнойРеквизит | $ЗначениеСоставногоРеквизита$ |

Сценарий: Я создаю элемент справочника если он не существует

	Если не существует элемент справочника "Справочник1" с реквизитами Тогда
	| Наименование  | $Наименование3$ |
	| РеквизитДата |  |
		Тогда я программно создаю элемент справочника "Справочник1" с реквизитами
		| Наименование  | $Наименование3$ |
		| РеквизитДата |  |

	Тогда существует элемент справочника "Справочник1" с "Наименование" равным "$Наименование3$"
	И существует элемент справочника "Справочник1" с реквизитами
		| Наименование  | $Наименование3$ |
		| РеквизитДата |  |

Сценарий: Я создаю запись регистра

	Когда я программно создаю запись регистра сведений "РегистрСведений1" с реквизитами
	| Измерение1 | Ключ 1 |
	| Ресурс1 | Ресурс 1 |
	| Реквизит1 | Реквизит 1 |

	Тогда существует запись регистра сведений "РегистрСведений1" с реквизитами
	| Измерение1 | Ключ 1|
	
	Тогда существует запись регистра сведений "РегистрСведений1" с реквизитами
	| Измерение1 | Ключ 1|
	| Ресурс1 | Ресурс 1 |
	| Реквизит1 | Реквизит 1 |

	Тогда не существует запись регистра сведений "РегистрСведений1" с реквизитами
	| Измерение1 | Ключ 1|
	| Ресурс1 | Ресурс 1 |
	| Реквизит1 | Реквизит 2 |

Сценарий: Я изменяю запись в регистре

	Когда существует запись регистра сведений "РегистрСведений1" с реквизитами
	| Измерение1 | Ключ 1 |
	И я программно изменяю запись регистра сведений "РегистрСведений1" с реквизитами
	| Измерение1 | Ключ 1 |
	| Ресурс1 | Ресурс 2 |

	Тогда не существует запись регистра сведений "РегистрСведений1" с реквизитами
	| Измерение1 | Ключ 1 |
	| Ресурс1 | Ресурс 1 |
	И существует запись регистра сведений "РегистрСведений1" с реквизитами
	| Измерение1 | Ключ 1 |
	| Ресурс1 | Ресурс 2 |
	И существует запись регистра сведений "РегистрСведений1" с реквизитами
	| Измерение1 | Ключ 1 |
	| Ресурс1 | Ресурс 2 |
	| Реквизит1 | Реквизит 1 |

Сценарий: Я перезаписываю существующую запись в регистре

	Дано я программно создаю запись регистра сведений "РегистрСведений1" с реквизитами
	| Измерение1 | Ключ 1 |
	| Ресурс1 | Ресурс 1 |
	| Реквизит1 | Реквизит 1 |
	Когда я программно создаю запись регистра сведений "РегистрСведений1" с реквизитами
	| Измерение1 | Ключ 1 |
	| Ресурс1 | Ресурс 2 |

	Тогда не существует запись регистра сведений "РегистрСведений1" с реквизитами
	| Измерение1 | Ключ 1 |
	| Ресурс1 | Ресурс 1 |
	И существует запись регистра сведений "РегистрСведений1" с реквизитами
	| Измерение1 | Ключ 1 |
	| Ресурс1 | Ресурс 2 |
	| Реквизит1 | |
	И не существует запись регистра сведений "РегистрСведений1" с реквизитами
	| Измерение1 | Ключ 1 |
	| Ресурс1 | Ресурс 2 |
	| Реквизит1 | Реквизит 1 |