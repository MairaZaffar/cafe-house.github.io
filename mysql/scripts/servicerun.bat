@echo off
rem START or STOP MySQL
rem --------------------------------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

net start "wordpressMySQL-3"
goto end

:stop
net stop "wordpressMySQL-3"

:end
exit
