@echo off
set T_FILENAME="TR_Joe & Mac 2 - Lost in the Tropics (U).smc"
set SCRIPTNAME="joemac2lostinthetropicssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
