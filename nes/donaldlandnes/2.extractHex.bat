@echo off
set T_FILENAME="TR_Donald Land (Japan).nes"
set SCRIPTNAME="donaldlandnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
