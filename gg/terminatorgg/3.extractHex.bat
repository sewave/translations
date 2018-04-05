@echo off
set T_FILENAME="TR_Terminator, The (U) [!].gg"
set SCRIPTNAME="terminatorgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
