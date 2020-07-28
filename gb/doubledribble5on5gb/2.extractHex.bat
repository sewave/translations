@echo off
set T_FILENAME="TR_Double Dribble - 5 on 5 (USA).gb"
set SCRIPTNAME="doubledribble5on5gb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5EF5:30,62B5:50,6345:20,63D5:20,6505:B0,6605:80
pause
