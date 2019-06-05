@echo off
set T_FILENAME="TR_Door Door (J) [!].nes"
set SCRIPTNAME="doordoornes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5010:300
pause
