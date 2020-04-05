@echo off
set T_FILENAME="TR_Pop Up (U) [!].gb"
set SCRIPTNAME="popupgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2795:20,691:20
pause
