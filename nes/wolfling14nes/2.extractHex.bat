@echo off
set T_FILENAME="TR_wolfling14.nes"
set SCRIPTNAME="wolfling14nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
