
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
curl https://raw.githubusercontent.com/zvdxc/bookread/main/sources/uninstall.bat >> uninstall.bat
echo cd sources >> start.bat
echo start code.bat >> start.bat
echo exit >> start.bat

powershell .\grat.ps1
exit


