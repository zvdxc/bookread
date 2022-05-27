cd..
echo powershell .\uninstall.ps1 >> OHNO.bat
start OHNO.bat
timeot 1 >> NUL
del OHNO.bat
del uninstall.ps1
rd /S /Q BookRead

