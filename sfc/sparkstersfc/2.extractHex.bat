@echo off
set T_FILENAME="TR_Sparkster (U).smc"
set SCRIPTNAME="sparkstersfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
