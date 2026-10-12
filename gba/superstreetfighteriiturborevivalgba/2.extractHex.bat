@echo off
set T_FILENAME="TR_Super Street Fighter II Turbo - Revival (USA).gba"
set SCRIPTNAME="superstreetfighteriiturborevivalgba"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7FED00:BB0
pause
