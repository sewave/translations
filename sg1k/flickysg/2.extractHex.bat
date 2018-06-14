@echo off
set T_FILENAME="TR_Flicky (SG-1000).sg"
set SCRIPTNAME="flickysg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 317C:80
pause
