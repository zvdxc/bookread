cd..
curl https://raw.githubusercontent.com/zvdxc/bookread/main/sources/uninstall.ps1 >> uninstall.ps1
echo powershell .\uninstall.ps1 >> OHNO.bat
start OHNO.bat
timeot 2 >> NUL
del OHNO.bat
del uninstall.ps1
rd /S /Q BookRead

