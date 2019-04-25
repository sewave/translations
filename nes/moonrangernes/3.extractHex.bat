@echo off
set T_FILENAME="TR_Moon Ranger (Bunch) [!].nes"
set SCRIPTNAME="moonrangernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 108F0:30
pause
