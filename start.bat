@echo off
echo BOOKREAD INSTALLER 1.0
title BOOKREAD INSTALLER 1.0
echo Proceed?
choice
if %errorlevel% == 1 goto i
echo cancelled
exit
:i
echo Installing.....
title Installing.....
rd /S /Q BookRead
md BookRead
cd BookRead
md sources
cd sources
curl https://raw.githubusercontent.com/zvdxc/bookread/main/sources/code.bat >> code.bat
curl https://raw.githubusercontent.com/zvdxc/bookread/main/sources/startvbs.bat >> startvbs.bat
curl https://raw.githubusercontent.com/zvdxc/bookread/main/sources/funkadelic.mp3 >> funkadelic.mp3
curl https://raw.githubusercontent.com/zvdxc/bookread/main/sources/.vbs >> .vbs
cd..
echo cd.. >> uninstall.bat
echo rd /S /Q BookRead >> uninstall.bat
echo cd sources >> bread.bat
echo start code.bat >> bread.bat
echo exit >> bread.bat
curl https://raw.githubusercontent.com/zvdxc/bookread/main/sources/grat.ps1 >> grat.ps1
powershell .\grat.ps1
timeout 1 >> NUL
del grat.ps1
cls
title Complete!
echo complete
echo use bread.bat in bookread folder to start!
pause
exit


