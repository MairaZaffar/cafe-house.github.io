@echo off
CALL C:\Bitnami\wordpress-5.6-2\scripts\setenv.bat
START /MIN "Bitnami WordPress Stack Environment" CMD /C %*
                    