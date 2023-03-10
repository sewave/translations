@echo off
set T_FILENAME="TR_Gunrunner.tzx"
set SCRIPTNAME="gunrunnertzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
