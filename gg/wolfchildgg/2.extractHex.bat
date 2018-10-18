@echo off
set T_FILENAME="TR_Wolfchild (U) [!].gg"
set SCRIPTNAME="wolfchildgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
