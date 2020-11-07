@echo off
set T_FILENAME="TR_Zoot.tzx"
set SCRIPTNAME="zoottzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
