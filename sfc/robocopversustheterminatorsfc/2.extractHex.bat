@echo off
set T_FILENAME="TR_Robocop Versus The Terminator (U).smc"
set SCRIPTNAME="robocopversustheterminatorsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
