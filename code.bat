@echo off
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
cls
color f0
echo 1 pdf buch lesen 2 txt buch lesen
choice /c 12
if %errorlevel% == 1 goto pdfbook
if %errorlevel% == 2 goto txtbook
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