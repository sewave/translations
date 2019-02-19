@echo off
set T_FILENAME="TR_Columns (U) [!].gg"
set SCRIPTNAME="columnsgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
