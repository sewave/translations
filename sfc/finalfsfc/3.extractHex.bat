@echo off
set T_FILENAME="TR_Final Fight (U).smc"
set SCRIPTNAME="finalfsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3A000-3A9FF,80000-803FF,F7C00:30
pause
