@echo off
set T_FILENAME="TR_Bubble Bobble Part 2 (USA).nes"
set SCRIPTNAME="bubblebobblepart2nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3FB00:10,3FA00:10,3F900:10,23C10:80
pause
