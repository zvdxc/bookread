@echo off
echo id des buches eingeben!
set /p bid=id: 
cls
curl https://raw.githubusercontent.com/zvdxc/bookread/main/books/%bid%.txt
:r
goto r
