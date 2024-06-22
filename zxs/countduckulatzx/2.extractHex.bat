@echo off
set T_FILENAME="TR_Count Duckula.tzx"
set SCRIPTNAME="countduckulatzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B441:80
pause
