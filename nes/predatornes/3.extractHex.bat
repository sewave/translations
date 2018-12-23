@echo off
set T_FILENAME="TR_Predator (U) [!].nes"
set SCRIPTNAME="predatornes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3FA10:80
pause
