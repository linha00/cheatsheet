REM enable or disable echo of commands when executing // REM is comment
@echo off

rem change directory
cd path 

rem copy file
copy [source] [destination]

rem print directory
dir 

rem craete new folder in the current directory
md folderName

rem move file from soruce to destination
move [source] [destination]



REM clear screen
cls 

REM print
echo text
REM newline
echo.

REM directors
REM create or overwrite a file with the set item
echo text > test.txt
REM add on to a existing file
echo text >> test.txt

REM preset variable
set variableName = value
REM numeric variable
set /A numeric = 19
set /A c = %a% + %b%
REM variable that get user input
set /p variableName=text to display
REM using of variable
echo temp text %variableName%

REM if condition
if %variableName% == 1 goto a
if not %variableName% == 1 goto b

REM close 
exit

REM set color of the cmd
REM second word
color 06

REM set the title of the cmd
title batch cheatsheet

REM pause the script until key press
pause

REM open / run application
start test.txt
start http://www.google.com

REM marker that we can jump to
:a
`
REM jump to a marker
goto :a
REM or goto a

REM delete file
del path

REM rename file name
rel path newName

REM pause for n seconds // only work in administrative
ping localhost -n 3 >nul

REM enviroment variable
echo %DATE%
echo %TIME%

rem local and global
rem global
SETLOCAL
rem local
ENDLOCAL
rem global