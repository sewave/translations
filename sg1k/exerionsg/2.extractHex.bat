@echo off
set T_FILENAME="TR_Exerion (SG-1000) [!].sg"
set SCRIPTNAME="exerionsg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 38F4:80
pause
