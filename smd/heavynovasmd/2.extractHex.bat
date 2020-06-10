@echo off
set T_FILENAME="TR_Heavy Nova (U) [!].bin"
set SCRIPTNAME="heavynovasmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
