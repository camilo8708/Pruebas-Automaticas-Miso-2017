
set chrome=%1
set firefox=%2
set ie=%3
set safari=%4
set opera=%5
set numEjec=%6

mkdir %numEjec%

:: Creamos los archivos para chrome
if "%chrome%" neq "False" (
	cd %numEjec%
	mkdir nightwatch-chrome
	cd nightwatch-chrome
	mkdir tests
	cd ..
	cd ..
	copy nightwatch-chrome/nightwatch.json %numEjec%\nightwatch-chrome\nightwatch.json
)

:: Creamos los archivos para firefox
if "%firefox%" neq "False"(
	cd %numEjec%
	mkdir nightwatch-firefox
	cd nightwatch-firefox
	mkdir tests
	cd ..
	cd ..
	copy nightwatch-firefox/nightwatch.json %numEjec%\nightwatch-firefox\nightwatch.json
)

:: Creamos los archivos para opera
if "%opera%" neq "False"(
	cd %numEjec%
	mkdir nightwatch-opera
	cd nightwatch-opera
	mkdir tests
	cd ..
	cd ..
	copy nightwatch-opera/nightwatch.json %numEjec%\nightwatch-opera\nightwatch.json
)

:: Creamos los archivos para ie
if "%ie%" neq "False"(
	cd %numEjec%
	mkdir nightwatch-ie
	cd nightwatch-ie
	mkdir tests
	cd ..
	cd ..
	copy nightwatch-ie/nightwatch.json %numEjec%\nightwatch-ie\nightwatch.json
)

:: Creamos los archivos para safari
if "%safari%" neq "False"(
	cd %numEjec%
	mkdir nightwatch-safari
	cd nightwatch-safari
	mkdir tests
	cd ..
	cd ..
	copy nightwatch-safari/nightwatch.json %numEjec%\nightwatch-safari\nightwatch.json
)

echo %chrome%
echo %firefox%
echo %ie%
echo %safari%
echo %opera%
echo %numEjec%

pause