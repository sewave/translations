@echo off
set T_FILENAME="TR_Altered Space (U) [!].gb"
set SCRIPTNAME="alteredspacegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
