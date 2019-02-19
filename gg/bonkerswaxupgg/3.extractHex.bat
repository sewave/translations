@echo off
set T_FILENAME="TR_Bonkers Wax Up! (U) [!].gg"
set SCRIPTNAME="bonkerswaxupgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
