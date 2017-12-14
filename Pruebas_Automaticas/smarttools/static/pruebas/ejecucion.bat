
set navegador=%1
set numEjec=%2

cd smarttools\static\pruebas\%numEjec%\webdriverio-%navegador%
wdio wdio.conf.js
