@echo off
set T_FILENAME="TR_Skatin' USA.tzx"
set SCRIPTNAME="skatinusatzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
