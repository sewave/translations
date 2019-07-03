@echo off
set T_FILENAME="TR_Total Recall (U) [!].nes"
set SCRIPTNAME="totalrecallnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
