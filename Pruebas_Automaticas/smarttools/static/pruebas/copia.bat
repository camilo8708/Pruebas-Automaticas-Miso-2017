
set chrome=%1
set firefox=%2
set ie=%3
set safari=%4
set opera=%5
set numEjec=%6

cd smarttools\static\pruebas

:: Creamos los archivos para chrome
if "%chrome%" neq "True"  GOTO firefox
	cd %numEjec%
	mkdir webdriverio-chrome
	cd webdriverio-chrome
	mkdir test
	cd ..
	copy *.js webdriverio-chrome\test\.
	cd ..
	copy webdriverio-chrome\wdio.conf.js %numEjec%\webdriverio-chrome\wdio.conf.js
	
:: Creamos los archivos para firefox
:firefox
if "%firefox%" neq "True" GOTO opera
	cd %numEjec%
	mkdir webdriverio-firefox
	cd webdriverio-firefox
	mkdir test
	cd ..
	copy *.js webdriverio-firefox\test\.
	cd ..
	copy webdriverio-firefox\wdio.conf.js %numEjec%\webdriverio-firefox\wdio.conf.js
	

:: Creamos los archivos para opera
:opera
if "%opera%" neq "True" GOTO ie
	cd %numEjec%
	mkdir webdriverio-opera
	cd webdriverio-opera
	mkdir test
	cd ..
	copy *.js webdriverio-opera\test\.
	cd ..
	copy webdriverio-opera\wdio.conf.js %numEjec%\webdriverio-opera\wdio.conf.js

:: Creamos los archivos para ie
:ie
if "%ie%" neq "True" GOTO safari
	cd %numEjec%
	mkdir webdriverio-ie
	cd webdriverio-ie
	mkdir test
	cd ..
	copy *.js webdriverio-ie\test\.
	cd ..
	copy webdriverio-ie\wdio.conf.js %numEjec%\webdriverio-ie\wdio.conf.js


:: Creamos los archivos para safari
:safari
if "%safari%" neq "True" GOTO end
	cd %numEjec%
	mkdir webdriverio-safari
	cd webdriverio-safari
	mkdir test
	cd ..
	copy *.js webdriverio-safari\test\.
	cd ..
	copy webdriverio-safari\wdio.conf.js %numEjec%\webdriverio-safari\wdio.conf.js

:end
