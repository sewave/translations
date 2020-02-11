@echo off
set T_FILENAME="TR_Lot Lot (Japan).nes"
set SCRIPTNAME="lotlotnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8910:50,8A10:100,81A0:A0,94A0:90,9840:10,97B0:40
pause
