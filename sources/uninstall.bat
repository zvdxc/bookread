cd..
curl https://raw.githubusercontent.com/zvdxc/bookread/main/sources/uninstall.ps1 >> uninstall.ps1
powershell .\uninstall.ps1


del uninstall.ps1
rd /S /Q BookRead

