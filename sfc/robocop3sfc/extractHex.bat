@echo off 
set T_FILENAME="TR_Robocop 3 (U).smc"
set SCRIPTNAME="robocop3sfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
