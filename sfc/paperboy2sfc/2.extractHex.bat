@echo off
set T_FILENAME="TR_Paperboy 2 (USA).sfc"
set SCRIPTNAME="paperboy2sfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
