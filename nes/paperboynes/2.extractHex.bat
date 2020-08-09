@echo off
set T_FILENAME="TR_Paperboy (USA).nes"
set SCRIPTNAME="paperboynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9E60:180
pause
