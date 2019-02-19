@echo off
set T_FILENAME="TR_Super Columns (U) [!].gg"
set SCRIPTNAME="supercolumnsgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
