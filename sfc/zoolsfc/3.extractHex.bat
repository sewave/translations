@echo off
set T_FILENAME="TR_Zool (U).smc"
set SCRIPTNAME="zoolsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
