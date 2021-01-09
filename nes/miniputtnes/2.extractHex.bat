@echo off
set T_FILENAME="TR_Mini-Putt (Japan).nes"
set SCRIPTNAME="miniputtnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 208A0:20
pause
