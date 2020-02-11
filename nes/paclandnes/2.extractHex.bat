@echo off
set T_FILENAME="TR_Pac-Land (Japan).nes"
set SCRIPTNAME="paclandnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8810:10
pause
