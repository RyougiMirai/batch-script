@echo off & setlocal EnableDelayedExpansion
set "ffmpeg=C:\Users\Administrator\Desktop\waifu2x-caffe1202\ffmpeg-20200519-74dfc88-win64-static\bin\ffmpeg.exe"
set "orin=C:\Users\Administrator\Desktop\whzl1\"
set "new=C:\Users\Administrator\Desktop\whzl2\"

cd /d "%orin%"
for /f %%i in ('dir /a-d /s /b *.mp4') do (
    set "x=%%~xi"
    set "n=%%~ni"
    set "newdir=!new!!n!\"
    mkdir "!newdir!"
    !ffmpeg! -i "%%i" -vcodec h264 "!newdir!!n!!x!"
)
pause
