@echo off
set T_FILENAME="TR_Cliffhanger (USA).nes"
set SCRIPTNAME="cliffhangernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3F6E0:40,3D610:100,34940:60
pause
