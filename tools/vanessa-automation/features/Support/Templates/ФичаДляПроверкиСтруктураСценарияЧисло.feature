#language: ru
@tree
@IgnoreOnCIMainBuild

Функционал: 

Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Структура сценария: я удаляю строку из товарной части документа


    И в таблице "Товары" я перехожу к строке:
        |'Артикул'|'Количество'|
        |<АртикулЧисло>|<КоличествоЧисло>|

    Примеры:
       |НомерЧисло|АртикулЧисло|КоличествоЧисло|
       |"СМ000000063"|"NC20724"|"40"|
