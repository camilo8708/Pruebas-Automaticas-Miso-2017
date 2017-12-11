
set chrome=%1
set firefox=%2
set ie=%3
set safari=%4
set opera=%5
set numEjec=%6

cd smarttools/static/pruebas

:: Creamos los archivos para chrome
if "%chrome%" neq "True"  GOTO firefox
	cd %numEjec%
	mkdir nightwatch-chrome
	cd nightwatch-chrome
	mkdir tests
	cd ..
	copy *.js nightwatch-chrome\tests\.
	cd ..
	copy nightwatch-chrome/nightwatch.json %numEjec%\nightwatch-chrome\nightwatch.json
	
	
:: Creamos los archivos para firefox
:firefox
if "%firefox%" neq "True" GOTO opera
	cd %numEjec%
	mkdir nightwatch-firefox
	cd nightwatch-firefox
	mkdir tests
	cd ..
	copy *.js nightwatch-firefox\tests\.
	cd ..
	copy nightwatch-firefox/nightwatch.json %numEjec%\nightwatch-firefox\nightwatch.json
	

:: Creamos los archivos para opera
:opera
if "%opera%" neq "True" GOTO ie
	cd %numEjec%
	mkdir nightwatch-opera
	cd nightwatch-opera
	mkdir tests
	cd ..
	copy *.js nightwatch-opera\tests\.
	cd ..
	copy nightwatch-opera/nightwatch.json %numEjec%\nightwatch-opera\nightwatch.json

	

:: Creamos los archivos para ie
:ie
if "%ie%" neq "True" GOTO safari
	cd %numEjec%
	mkdir nightwatch-ie
	cd nightwatch-ie
	mkdir tests
	cd ..
	copy *.js nightwatch-ie\tests\.
	cd ..
	copy nightwatch-ie/nightwatch.json %numEjec%\nightwatch-ie\nightwatch.json


:: Creamos los archivos para safari
:safari
if "%safari%" neq "True" GOTO end
	cd %numEjec%
	mkdir nightwatch-safari
	cd nightwatch-safari
	mkdir tests
	cd ..
	copy *.js nightwatch-safari\tests\.
	cd ..
	copy nightwatch-safari/nightwatch.json %numEjec%\nightwatch-safari\nightwatch.json

:end
