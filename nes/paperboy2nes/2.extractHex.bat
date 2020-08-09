@echo off
set T_FILENAME="TR_Paperboy 2 (USA).nes"
set SCRIPTNAME="paperboy2nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
