
rd /S /Q BookRead
md BookRead
cd BookRead
md sources
cd sources
curl https://raw.githubusercontent.com/zvdxc/bookread/main/sources/code.bat >> code.bat
curl https://raw.githubusercontent.com/zvdxc/bookread/main/sources/startvbs.bat >> startvbs.bat
curl https://raw.githubusercontent.com/zvdxc/bookread/main/sources/audiocrowd_free_track_37_funkadelic.mp3 >> audiocrowd_free_track_37_funkadelic.mp3
curl https://raw.githubusercontent.com/zvdxc/bookread/main/sources/.vbs >> .vbs
cd..
echo cd.. >> uninstall.bat
echo rd /S /Q BookRead >> uninstall.bat
echo cd sources >> start.bat
echo start code.bat >> start.bat
echo exit >> start.bat
curl https://raw.githubusercontent.com/zvdxc/bookread/main/sources/grat.ps1 >> grat.ps1
powershell .\grat.ps1
timeout 1 >> NUL
del grat.ps1
exit


