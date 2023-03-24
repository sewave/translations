@echo off
set T_FILENAME="TR_Wayne's World (USA).gb"
set SCRIPTNAME="waynesworldgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
