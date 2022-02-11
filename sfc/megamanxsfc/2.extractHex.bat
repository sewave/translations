@echo off
set T_FILENAME="TR_Mega Man X (USA) (Rev 1).sfc"
set SCRIPTNAME="megamanxsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
