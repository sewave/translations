@echo off
set T_FILENAME="TR_Super Off Road (U) [!].smc"
set SCRIPTNAME="superoffroadsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
