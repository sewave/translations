@echo off
set T_FILENAME="TR_Trip World (E) [!].gb"
set SCRIPTNAME="tripworldgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
