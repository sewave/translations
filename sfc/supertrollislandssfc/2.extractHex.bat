@echo off
set T_FILENAME="TR_Super Troll Islands (USA).sfc"
set SCRIPTNAME="supertrollislandssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
