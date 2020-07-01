@echo off
set T_FILENAME="TR_Hurricanes (USA).sfc"
set SCRIPTNAME="hurricanessfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
