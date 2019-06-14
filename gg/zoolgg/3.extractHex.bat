@echo off
set T_FILENAME="TR_Zool (U) [!].gg"
set SCRIPTNAME="zoolgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
