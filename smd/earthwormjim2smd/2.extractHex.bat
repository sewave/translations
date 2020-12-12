@echo off
set T_FILENAME="TR_Earthworm Jim 2 (USA).md"
set SCRIPTNAME="earthwormjim2smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1B5BAE:40,1B5C4E:40,1B5CEE:20,1B5E6E:20
pause
