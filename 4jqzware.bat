@echo off
title Loading...
chcp 65001 >nul
cd files
echo loading...
timeout /t 3 >nu

:start
cls
call :banner

:menu
timeout /t 2 >nul
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set bs=%%A
echo.
echo.
echo [38;2;255;255;255m         ╔═(1) Process Hacker 2
echo [38;2;255;255;255m         ║
echo [38;2;255;255;255m         ╠══(2) Ip pinger
echo [38;2;255;255;255m         ║
echo [38;2;255;255;255m         ╠═══(3) Angry Ip Scanner
echo [38;2;255;255;255m         ║
echo [38;2;255;255;255m         ╠════(4) Putty
echo [38;2;255;255;255m         ║
echo [38;2;255;255;255m         ╠══════(5) Dox tool
echo [38;2;255;255;255m         ║
echo [38;2;255;255;255m         ╠════════(6) iplookup
echo [38;2;255;255;255m         ║
echo [38;2;255;255;255m         ╠══════════(7) pscan
echo [38;2;255;255;255m         ║
echo [38;2;255;255;255m         ╚═══╦═══════════(8) exit
echo [38;2;255;255;255m             ║
set /p input=.%BS%             ╚═════^>
if /I %input% EQU 1 start ProcessHacker.exe
if /I %input% EQU 2 start pinger.bat
if /I %input% EQU 3 start ipscan.exe
if /I %input% EQU 4 start Putty.exe
if /I %input% EQU 5 start Dox_Tool_V2.exe
if /I %input% EQU 6 start iplookup.exe
if /I %input% EQU 7 start pscan.exe
if /I %input% EQU 8 exit
goto start

:banner
title jqzware v1.27
timeout /t 1 >nul
echo.
echo.
echo                  [38;2;0;0;0m██╗ ██████╗ ███████╗   ███████╗██╗  ██╗███████╗    ██╗    ██╗ █████╗ ██████╗ ███████╗
echo                  [38;2;51;51;51m██║██╔═══██╗╚══███╔╝   ██╔════╝╚██╗██╔╝██╔════╝    ██║    ██║██╔══██╗██╔══██╗██╔════╝
echo                  [38;2;102;102;102m██║██║   ██║  ███╔╝    █████╗   ╚███╔╝ █████╗      ██║ █╗ ██║███████║██████╔╝█████╗  
echo             [38;2;153;153;153m██   ██║██║▄▄ ██║ ███╔╝     ██╔══╝   ██╔██╗ ██╔══╝      ██║███╗██║██╔══██║██╔══██╗██╔══╝  
echo             [38;2;204;204;204m╚█████╔╝╚██████╔╝███████╗██╗███████╗██╔╝ ██╗███████╗    ╚███╔███╔╝██║  ██║██║  ██║███████╗
echo              [38;2;255;255;255m╚════╝  ╚═════╝ ╚══════╝╚═╝╚══════╝╚═╝  ╚═╝╚══════╝     ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝
echo                                                          Welcome %username%!
[38;2;255;255;255m
echo.
