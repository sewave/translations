@echo off
set T_FILENAME="TR_Panzadrome.tzx"
set SCRIPTNAME="panzadrometzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
