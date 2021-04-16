@echo off
set T_FILENAME="TR_Monopoly (USA).md"
set SCRIPTNAME="monopolysmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
