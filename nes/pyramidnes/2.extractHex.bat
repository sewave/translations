@echo off
set T_FILENAME="TR_Pyramid (AVE) (PRG1) [!].nes"
set SCRIPTNAME="pyramidnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5910:20,4FA0:50
pause
