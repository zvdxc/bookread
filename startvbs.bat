@echo off
:checkPrivileges
NET FILE 1>NUL 2>NUL

if '%errorlevel%' == '0' (
  goto mainScript 
) else (
  goto getPrivileges
)
::-------------------------------------------------------------------------------------------------

:getPrivileges
  if '%1'=='ELEV' (shift & goto mainScript)
  echo.
  echo Selbstausfuehrung mit Administratorrechten...
  setlocal DisableDelayedExpansion
  set "batchPath=%~0"
  setlocal EnableDelayedExpansion
  echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\runAsAdmin.vbs"
  echo UAC.ShellExecute "!batchPath!", "ELEV", "", "runas", 1 >> "%temp%\runAsAdmin.vbs"
  "%temp%\runAsAdmin.vbs"
  exit /B
::-------------------------------------------------------------------------------------------------


:mainScript

  cls
 echo music from https://de.audiocrowd.net
 timeout 1 >> NUL
 cls

color f0
echo Read.
timeout 1 >> NUL
cls
timeout 1 >> NUL
echo Read. Books.
timeout 1 >> NUL
cls
color 40
timeout 1 >> NUL
echo Read. Books. Easy!
timeout 0 >> NUL
color 60
cls
timeout 0 >> NUL
echo Read. Books. Easy!
timeout 0 >> NUL
color f0
cls
timeout 0 >> NUL
echo Read. Books. Easy!
timeout 0 >> NUL
color f0
cls
timeout 0 >> NUL
echo Read. Books. Easy!
taskkill /f /im wscript.exe
cls
color f0
:choice
echo 1 pdf buch lesen 2 txt buch lesen 3 index ansehen
choice /c 123
if %errorlevel% == 1 goto pdfbook
if %errorlevel% == 2 goto txtbook
if %errorlevel% == 3 goto index
:txtbook
echo id des buches eingeben!
set /p bid=id: 
cls

curl https://raw.githubusercontent.com/zvdxc/bookread/main/books/%bid%.txt
:r
goto r

:pdfbook

del book.pdf >> NUL
cls
echo id des buches eingeben!
set /p bid=id: 
cls
curl https://raw.githubusercontent.com/zvdxc/bookread/main/books/%bid%.pdf >> book.pdf
start book.pdf
exit
:index
curl https://raw.githubusercontent.com/zvdxc/bookread/main/index.txt
goto choice
