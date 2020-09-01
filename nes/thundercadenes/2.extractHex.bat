@echo off
set T_FILENAME="TR_Thundercade (USA).nes"
set SCRIPTNAME="thundercadenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4190:10,11310:120
pause
