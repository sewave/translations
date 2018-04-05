@echo off
set T_FILENAME="TR_Gargoyles (U) [!].bin"
set SCRIPTNAME="gargoyles"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
