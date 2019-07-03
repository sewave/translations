@echo off
set T_FILENAME="TR_Cool Spot (U) [!].gen"
set SCRIPTNAME="coolspotsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
