@echo off
set T_FILENAME="TR_Super Ghouls'n Ghosts (USA).sfc"
set SCRIPTNAME="superghoulsnghostssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
