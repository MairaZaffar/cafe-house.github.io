@echo off
rem START or STOP Apache Service
rem --------------------------------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

net start wordpressApache-3
goto end

:stop

"C:/Bitnami/wordpress-5.6-2/apache2\bin\httpd.exe" -n "wordpressApache-3" -k stop

:end
exit
