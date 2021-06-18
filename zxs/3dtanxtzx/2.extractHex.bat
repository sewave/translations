@echo off
set T_FILENAME="TR_3D Tanx.tzx"
set SCRIPTNAME="3dtanxtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
