@echo off
set T_FILENAME="TR_Metal Morph (USA).sfc"
set SCRIPTNAME="metalmorphsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
