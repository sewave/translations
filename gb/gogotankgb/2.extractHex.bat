@echo off
set T_FILENAME="TR_Go! Go! Tank (U) [!].gb"
set SCRIPTNAME="gogotankgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
