@echo off
set T_FILENAME="TR_Gain Ground (UE) [c][!].gen"
set SCRIPTNAME="gaingroundsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
