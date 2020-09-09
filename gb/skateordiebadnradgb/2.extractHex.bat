@echo off
set T_FILENAME="TR_Skate or Die - Bad 'N Rad (USA).gb"
set SCRIPTNAME="skateordiebadnradgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
