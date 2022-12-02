@echo off
set T_FILENAME="TR_Zynaps.tzx"
set SCRIPTNAME="zynapstzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
