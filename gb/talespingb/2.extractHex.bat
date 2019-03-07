@echo off
set T_FILENAME="TR_TaleSpin (USA).gb"
set SCRIPTNAME="talespingb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
