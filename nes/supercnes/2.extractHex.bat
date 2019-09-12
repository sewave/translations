@echo off
set T_FILENAME="TR_Super C (U) [!].nes"
set SCRIPTNAME="supercnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3AD10:100
pause
