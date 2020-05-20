@echo off
set T_FILENAME="TR_NBA Jam (U) [!].gb"
set SCRIPTNAME="nbajamgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
