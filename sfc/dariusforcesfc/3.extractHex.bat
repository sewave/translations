@echo off
set T_FILENAME="TR_Darius Force (J).smc"
set SCRIPTNAME="dariusforcesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
