@echo off
set T_FILENAME="TR_Trax (USA, Europe).gb"
set SCRIPTNAME="traxgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
