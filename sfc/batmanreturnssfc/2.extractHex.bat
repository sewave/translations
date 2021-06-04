@echo off
set T_FILENAME="TR_Batman Returns (USA).sfc"
set SCRIPTNAME="batmanreturnssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 98380:40
pause
