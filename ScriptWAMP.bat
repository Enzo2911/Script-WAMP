@echo off

set EXE=wampmanager.exe

set RUN=C:\wamp64\wampmanager.exe

tasklist /FI "IMAGENAME eq wampmanager.exe" 2>NUL | find /I /N "wampmanager.exe">NUL

if "%ERRORLEVEL%"=="0" goto script1

if "%ERRORLEVEL%"=="1" goto script2

:script1
 
NET STOP wampapache64 && NET STOP wampmysqld64 && NET STOP wampmariadb64 && Taskkill /IM %EXE% /F
goto end

:script2

start %RUN%
goto end

:end
exit
