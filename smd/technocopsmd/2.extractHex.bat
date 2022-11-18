@echo off
set T_FILENAME="TR_Technocop (USA).md"
set SCRIPTNAME="technocopsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
