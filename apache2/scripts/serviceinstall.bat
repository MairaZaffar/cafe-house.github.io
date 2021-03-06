@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"C:/Bitnami/wordpress-5.6-2/apache2\bin\httpd.exe" -k install -n "wordpressApache-3" -f "C:/Bitnami/wordpress-5.6-2/apache2\conf\httpd.conf"

net start wordpressApache-3 >NUL
goto end

:remove
rem -- STOP SERVICE BEFORE REMOVING

net stop wordpressApache-3 >NUL
"C:/Bitnami/wordpress-5.6-2/apache2\bin\httpd.exe" -k uninstall -n "wordpressApache-3"

:end
exit
