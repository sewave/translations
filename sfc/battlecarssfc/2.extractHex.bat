@echo off
set T_FILENAME="TR_Battle Cars (USA).sfc"
set SCRIPTNAME="battlecarssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
