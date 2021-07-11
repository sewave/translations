@echo off
set T_FILENAME="TR_Heavy Barrel (USA).nes"
set SCRIPTNAME="heavybarrelnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
