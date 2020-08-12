@echo off
set T_FILENAME="TR_California Games (USA).nes"
set SCRIPTNAME="californiagamesnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8624:30
pause
