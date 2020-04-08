@echo off

ring edt workspace export --workspace-location %workspace% --project-name %projectName% --configuration-files %XMLPath%
runner compile -src XMLPath -out CFPath --ibconnection /S"sqlserver:2441\kozs_sppr_van"  --db-user --db-pwd 
 --v8version - Версия платформы  --debuglogfile - Вывод отладочных файлов в указанный лог-файл

