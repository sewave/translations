@echo off
set T_FILENAME="TR_Monaco GP (SG-1000).sg"
set SCRIPTNAME="monacogpsg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
