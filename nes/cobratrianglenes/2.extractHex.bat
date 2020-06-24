@echo off
set T_FILENAME="TR_Cobra Triangle (U) [!].nes"
set SCRIPTNAME="cobratrianglenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
