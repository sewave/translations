@echo off
set T_FILENAME="TR_Columns (U) [!].gg"
set S_FILENAME="Columns (U) [!].gg"
set SCRIPTNAME="columnsgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
