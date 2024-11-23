@echo off
set T_FILENAME="TR_FrankNStein.tzx"
set SCRIPTNAME="franknsteintzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9E09:10
pause
