@echo off
set T_FILENAME="TR_DH.EXE"
set SCRIPTNAME="darkhalfpc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
