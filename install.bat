rd /S /Q BookRead
md BookRead
cd BookRead
curl https://raw.githubusercontent.com/zvdxc/bookread/main/sources/code.bat >> code.bat
curl https://raw.githubusercontent.com/zvdxc/bookread/main/sources/startvbs.bat >> startvbs.bat
curl https://raw.githubusercontent.com/zvdxc/bookread/main/sources/audiocrowd_free_track_37_funkadelic.mp3 >> audiocrowd_free_track_37_funkadelic.mp3
curl https://raw.githubusercontent.com/zvdxc/bookread/main/sources/.vbs >> .vbs

curl https://raw.githubusercontent.com/zvdxc/bookread/main/sources/uninstall.bat >> uninstall.bat
cd..
del BookRead.bat
echo cd BookRead >> BookRead.bat
echo start code >> BookRead.bat
echo exit >> BookRead.bat
pause