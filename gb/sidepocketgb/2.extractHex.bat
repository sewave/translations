@echo off
set T_FILENAME="TR_Side Pocket (U) [!].gb"
set SCRIPTNAME="sidepocketgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
