@echo off
set T_FILENAME="TR_Wolf Child (U) [c][!].gen"
set SCRIPTNAME="wolfchildsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
