ECHO OFF
title welcome to 98os!
:MENU
CLS
title welcome to 98os!
ECHO.
ECHO welcome to 98os!
ECHO ================
ECHO.
ECHO ==================
ECHO 1 - open setup
ECHO 2 - exit      
ECHO 3 - uninstall 98os
ECHO 4 - open 98os
ECHO ==================
ECHO.
SET /P M=
IF %M%==1 GOTO OPENSETUP
IF %M%==2 GOTO EXITINSTALLER
IF %M%==3 GOTO UNINSTALL
IF %M%== GOTO MENU
IF %M%==4 GOTO OPEN98OS
GOTO MENU
:OPENSETUP
title 98os Installer
cd \
mkdir 98os
cd 98os
mkdir data
cd data
mkdir files
cd files
ECHO Succeeded to install 98os!
ECHO please restart the installer before
ECHO opening 98os!
pause
@echo OFF
CLS
ECHO. 
ECHO.
ECHO.
ECHO.
ECHO.
@ECHO ========================================================
@ECHO welcome to 98os!
@ECHO We are just getting us ready for the first time startup.
@ECHO In the mean time, why not tell you what we can do!
@ECHO ========================================================
title 98os - Welcome!
pause
ECHO.
ECHO.
ECHO.
@ECHO =============================================================================
@ECHO Program
@ECHO we have our own programming stuff
@ECHO so go check that out if your a programmer.
ECHO.
@ECHO Play games
@ECHO we have "ball swinger", "Dream gauntlet" and other stuff for free
@ECHO and you can download and play more games too!
ECHO.
@ECHO Play with others
@ECHO you can download a chat app and talk with other people too!
ECHO.
@ECHO that is not all of the stuff we can do but that is all we'll tell you for now.
@ECHO We are done getting ready!
@ECHO ==============================================================================
pause
GOTO MENU
:EXITINSTALLER
title are you sure?
ECHO are you sure(Y/n)?
SET /P M=
IF %M%==Y exit
IF %M%==n GOTO MENU
IF %M%==y exit
IF %M%==N GOTO MENU
IF -F C:\98os GOTO DELETEBUTNOTDELETE
GOTO MENU
:UNINSTALL
cd \
cd 98os
cd data
rmdir files
cd \
cd 98os
rmdir /Q data
cd \
rmdir /Q 98os
@ECHO if the uninstall failed try deleting all of your data
@ECHO or go here C:\98os in file explorer and delete everything in the files in data
pause
GOTO MENU
:OPEN98OS
cd bin
cd src
98osInstaller.bat
GOTO MENU