@echo off
set T_FILENAME="TR_Raiden Trad (USA).sfc"
set SCRIPTNAME="raidentradsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
