﻿# language: ru

@IgnoreOnCIMainBuild
@DocumentationBuild

Функционал: Создание нового feature-файла
	Как Разработчик
	Я Хочу Иметь возможность писать feature-файлы
	Чтобы Вести разработку по bdd

Контекст:
	Когда Сформировать имя временного файла фичи "Example1"
	
Сценарий: Создание feature-файла
	Когда Я открываю текстовый редактор
	Тогда запустился редактор Visual Studio Code
	И Я пишу заголовок фичи 
	И Я пишу секцию Контекст
	И Я пишу секцию Сценарий
	И Я пишу секцию Структура сценария
	И Сохраняю сделанные изменения
