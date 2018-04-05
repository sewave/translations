@echo off
set T_FILENAME="TR_Final Fight Guy (U).smc"
set SCRIPTNAME="finalfguysfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3B600-3BFFF,80000-803FF,F7C00:30
pause
