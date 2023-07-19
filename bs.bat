This program is created by Blopsoft.
Only for BlopDOS!
@echo off
cls
title BlopDOS
echo Welcome to BlopStore!
:Menu
echo L - list of the programs
echo D - download apps
echo nothing - exit
set /p answer=Your choice:
if %answer%==L goto list
if %answer%==D goto downoad
if %answer%==l goto list
if %answer%==d goto download
:list
cls
echo Tetris
echo Download code: 10180
pause
goto Menu
:download
cls
echo E - Exit
echo nothing - exit the store
set /p item=Download code:
if %item%==E goto exit
if %item%==e goto exit
if %item%==10180 goto TetrisDownload
:exit
cls
goto Menu
:TetrisDownload
bitsadmin.exe /transfer "tetris" http://https://blopdos.github.io/tetris/tetris.bat tetris.bat
cls
goto Menu


