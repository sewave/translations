@echo off
set T_FILENAME="TR_Super Columns (U) [!].gg"
set S_FILENAME="Super Columns (U) [!].gg"
set SCRIPTNAME="supercolumnsgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
