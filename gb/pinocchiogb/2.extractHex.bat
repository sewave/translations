@echo off
set T_FILENAME="TR_Pinocchio (USA).gb"
set SCRIPTNAME="pinocchiogb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1F5E0:40
pause
