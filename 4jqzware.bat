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
echo [38;2;255;255;0m         ╔═(1) Process Hacker 2
echo [38;2;255;255;0m         ║
echo [38;2;255;255;0m         ╠══(2) Ip pinger
echo [38;2;255;255;0m         ║
echo [38;2;255;255;0m         ╠═══(3) Angry Ip Scanner
echo [38;2;255;255;0m         ║
echo [38;2;255;255;0m         ╠════(4) Putty
echo [38;2;255;255;0m         ║
echo [38;2;255;255;0m         ╠══════(5) Dox tool
echo [38;2;255;255;0m         ║
echo [38;2;255;255;0m         ╠════════(6) iplookup
echo [38;2;255;255;0m         ║
echo [38;2;255;255;0m         ╠══════════(7) pscan
echo [38;2;255;255;0m         ║
echo [38;2;255;255;0m         ╚═══╦═══════════(8) exit
echo [38;2;255;255;0m             ║
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
echo                  [38;2;255;0;0m██╗ ██████╗ ███████╗   ███████╗██╗  ██╗███████╗    ██╗    ██╗ █████╗ ██████╗ ███████╗
echo                  [38;2;255;51;0m██║██╔═══██╗╚══███╔╝   ██╔════╝╚██╗██╔╝██╔════╝    ██║    ██║██╔══██╗██╔══██╗██╔════╝
echo                  [38;2;255;102;0m██║██║   ██║  ███╔╝    █████╗   ╚███╔╝ █████╗      ██║ █╗ ██║███████║██████╔╝█████╗  
echo             [38;2;255;153;0m██   ██║██║▄▄ ██║ ███╔╝     ██╔══╝   ██╔██╗ ██╔══╝      ██║███╗██║██╔══██║██╔══██╗██╔══╝  
echo             [38;2;255;204;0m╚█████╔╝╚██████╔╝███████╗██╗███████╗██╔╝ ██╗███████╗    ╚███╔███╔╝██║  ██║██║  ██║███████╗
echo              [38;2;255;255;0m╚════╝  ╚═════╝ ╚══════╝╚═╝╚══════╝╚═╝  ╚═╝╚══════╝     ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝
echo                                                          Welcome %username%!
echo.
