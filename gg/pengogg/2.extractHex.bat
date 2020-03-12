@echo off
set T_FILENAME="TR_Pengo (U) [!].gg"
set SCRIPTNAME="pengogg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
