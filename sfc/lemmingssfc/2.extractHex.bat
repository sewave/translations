@echo off
set T_FILENAME="TR_Lemmings (USA) (Rev 1).sfc"
set SCRIPTNAME="lemmingssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
