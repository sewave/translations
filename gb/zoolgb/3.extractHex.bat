@echo off
set T_FILENAME="TR_Zool (U) [!].gb"
set SCRIPTNAME="zoolgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
