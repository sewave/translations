@echo off
set T_FILENAME="TR_Ghoul Patrol (U).smc"
set SCRIPTNAME="ghoulpatrolsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
