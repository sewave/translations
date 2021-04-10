@echo off
set T_FILENAME="TR_Indivisible.nes"
set SCRIPTNAME="indivisiblenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20510:140
pause
