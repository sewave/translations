@echo off
set T_FILENAME="TR_Earthworm Jim (U) [!].gg"
set SCRIPTNAME="earthwormjimgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
