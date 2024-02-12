@echo OFF
CLS
:STARTSCREEN
cd \
cd 98os
cd data
cd files
@ECHO Type in "help" or "?" to get help on commands.
@ECHO %F% is open
cd \
cd 98os
cd data
cd files
SET /P M=
IF %M%==help GOTO HELP
IF %M%==? GOTO HELP
IF %M%==clear GOTO CLEAR
IF %M%==shutdown exit
IF %M%==makeDir GOTO MAKEDIR
IF %M%==makedir GOTO MAKEDIR
IF %M%==goto GOTO GOTOC
IF %M%==delete GOTO DELETE
IF %M%==  GOTO NOCOMMAND
IF %M%==open GOTO OPEN
IF %M%==makeFile GOTO MAKEFILE
IF %M%==makefile GOTO MAKEFILE
IF %M%==openTextEditor GOTO OPENTEXTEDITOR
IF %M%==opentexteditor GOTO OPENTEXTEDITOR
IF %M%==opentextEditor GOTO OPENTEXTEDITOR
IF %M%==OpentextEditor GOTO OPENTEXTEDITOR
IF %M%==OpenTexteditor GOTO OPENTEXTEDITOR
IF %M%==openTextEditor GOTO OPENTEXTEDITOR
IF %M%==openTextEditor GOTO OPENTEXTEDITOR
IF %M%==showDir GOTO SHOWDIR
IF %M%==showdir GOTO SHOWDIR
IF %M%==showIP GOTO SHOWIP
IF %M%==setBackground GOTO SETBACKGROUND
IF %M%==setbackground GOTO SETBACKGROUND
IF %M%==colorHelper GOTO COLORHELPER
IF %M%==colorhelper GOTO COLORHELPER
:NOCOMMAND
@ECHO there is no command named %M%,
@ECHO so nothing has happend!
@ECHO ether you had a spelling error
@ECHO or there is no command!
@ECHO.
GOTO STARTSCREEN
:HELP
@ECHO "open - opens a certain file"
@ECHO "makeDir - creates a directory"
@ECHO "goto - goes into a certain file/directory"
@ECHO "shutdown - shutsdown your computer or exits the os"
@ECHO "clear - clears the screen"
@ECHO "delete - deletes a file/directory"
@ECHO "makeFile - creates a file"
@ECHO "openTextEditor - opens the default text editor"
@ECHO "showDir - shows all files/directorys"
@ECHO "showIP - shows all IP's"
@ECHO "setbackground - sets the color of the background"
@ECHO "colorHelper - tells you all the colors for color commands(name not number and letter)"
@ECHO "playGame - opens the game menu"
@ECHO go to here for visuals: C:\98os\data\files
@ECHO (sorry for quotes they are needed trust me)
ECHO.
GOTO STARTSCREEN
:CLEAR
CLS
GOTO STARTSCREEN
:MAKEDIR
ECHO file name:
SET /P C=
mkdir %C%
GOTO STARTSCREEN
:GOTOC
@ECHO enter the file name you want to go to:
SET /P F=
cd %F%
GOTO STARTSCREEN
:DELETE
@ECHO even if it says it can't find the file most of the time it's lieing
@ECHO enter the file name you want to delete:
SET /P D=
del /Q %D%
rmdir /Q %D%
GOTO STARTSCREEN
:OPEN
@ECHO enter the file you want to open:
SET /P O=
%O%
GOTO STARTSCREEN
:MAKEFILE
@ECHO file name:
SET /P N=
copy con %N%
GOTO STARTSCREEN
:OPENTEXTEDITOR
CLS
title debeta
@ECHO ==============================
@ECHO Welcome to debeta text editor!
@ECHO this is a free text editor for
@ECHO all programing needs!
@ECHO no need for creating a new
@ECHO file we create one for you!
@ECHO just press ctrl + z to exit!
@ECHO ==============================
@ECHO what would you like to name your file(including the extention):
SET /P A=
@ECHO type whats inside your file:
copy con %A%
GOTO STARTSCREEN
:SHOWDIR
dir
pause
GOTO STARTSCREEN
:SHOWIP
ipconfig
pause
GOTO STARTSCREEN
:SETBACKGROUND
@echo what color do you want it to be:
SET /P G= 
IF %G%==aqua color 3e
IF %G%==blue color 1e
IF %G%==black color 0f
IF %G%==white color 7c
IF %G%==green color 2f
IF %G%==red color 4f
IF %G%==christmas color 4a
IF %G%==gray color 8c
IF %G%==yellow color 6f
IF %G%==purple color 5f
IF %G%==lightBlue color 9f
IF %G%==lightblue color 9f
IF %G%==lightGreen color af
IF %G%==lightgreen color af
IF %G%==lightAqua color b8
IF %G%==lightaqua color b8
IF %G%==lightRed color c0
IF %G%==lightred color c0
IF %G%==lightPurple color d0
IF %G%==lightpurple color d0
IF %G%==lightYellow color e0
IF %G%==lightyellow color e0
GOTO STARTSCREEN
:COLORHELPER
help color
GOTO STARTSCREEN