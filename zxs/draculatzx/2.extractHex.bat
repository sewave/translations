@echo off
set T_FILENAME="TR_DrAcula.tzx"
set SCRIPTNAME="draculatzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3973:18,34DB:10
pause
