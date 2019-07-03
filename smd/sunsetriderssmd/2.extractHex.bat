@echo off
set T_FILENAME="TR_Sunset Riders (U) [!].bin"
set SCRIPTNAME="sunsetriderssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
