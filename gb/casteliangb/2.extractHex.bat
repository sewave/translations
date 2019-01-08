@echo off
set T_FILENAME="TR_Castelian (U) [!].gb"
set SCRIPTNAME="casteliangb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
