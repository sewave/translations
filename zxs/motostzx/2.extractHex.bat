@echo off
set T_FILENAME="TR_Motos.tzx"
set SCRIPTNAME="motostzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7904:18
pause
