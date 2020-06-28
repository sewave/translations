@echo off
set T_FILENAME="TR_Robodemons (Color Dreams) [!].nes"
set SCRIPTNAME="robodemonsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
