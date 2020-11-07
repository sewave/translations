@echo off
set T_FILENAME="TR_Mappy (Japan).nes"
set SCRIPTNAME="mappynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5C10:50,5A10:40,4A10:40,4250:10
pause
