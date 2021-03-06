@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"C:\Bitnami\wordpress-5.6-2/mysql\bin\mysqld.exe" --install "wordpressMySQL-3" --defaults-file="C:\Bitnami\wordpress-5.6-2/mysql\my.ini"

net start "wordpressMySQL-3" >NUL
goto end

:remove
rem -- STOP SERVICES BEFORE REMOVING

net stop "wordpressMySQL-3" >NUL
"C:\Bitnami\wordpress-5.6-2/mysql\bin\mysqld.exe" --remove "wordpressMySQL-3"

:end
exit
