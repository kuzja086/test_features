@echo off
chcp 1251 > nul

echo $ 1cv8 %*
set LOGFILE=%temp%\%random%.log
"C:\Program Files\1cv8\current\bin\1cv8" %* /Out %LOGFILE%
<%LOGFILE% (set /p LOGFILECONTENT=)
echo %LOGFILECONTENT%

if exist %LOGFILE% (
  del /f /s /q %LOGFILE% > nul
)

exit /b