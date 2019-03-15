@echo off
set T_FILENAME="TR_Chakan (U) [!].gg"
set SCRIPTNAME="chakangg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
