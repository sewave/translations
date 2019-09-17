@echo off
set T_FILENAME="TR_Soldiers of Fortune (U) [c][!].gen"
set SCRIPTNAME="soldiersoffortunesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
