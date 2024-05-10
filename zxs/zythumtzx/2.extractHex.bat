@echo off
set T_FILENAME="TR_Zythum.tzx"
set SCRIPTNAME="zythumtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3D5F:8
pause
