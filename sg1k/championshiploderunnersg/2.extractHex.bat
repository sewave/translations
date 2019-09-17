@echo off
set T_FILENAME="TR_Championship Loderunner (SG-1000).sg"
set SCRIPTNAME="championshiploderunnersg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
