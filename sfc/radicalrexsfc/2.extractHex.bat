@echo off
set T_FILENAME="TR_Radical Rex (U).smc"
set SCRIPTNAME="radicalrexsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
