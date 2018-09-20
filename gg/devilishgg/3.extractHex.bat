@echo off
set T_FILENAME="TR_Devilish (U) [!].gg"
set SCRIPTNAME="devilishgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7DC3:A0
pause
