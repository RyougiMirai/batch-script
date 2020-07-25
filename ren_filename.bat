@echo off & setlocal EnableDelayedExpansion
echo "请输入所要添加的标题前缀[不添请回车]"
set /p pfx=

set "p=%cd%\"
set /a sum=0
for /f %%i in ('dir /a-d /b *.jpg') do (
    set /a sum+=1
    ren "%%i" "%pfx%!sum!_%%i"
)
pause
