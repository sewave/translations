@echo off
set T_FILENAME="TR_Radical Rex (U).smc"
set S_FILENAME="Radical Rex (U).smc"
set SCRIPTNAME="radicalrexsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
