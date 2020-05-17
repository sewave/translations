@echo off
set T_FILENAME="TR_Secret Ties (U) (Prototype).nes"
set SCRIPTNAME="secrettiesnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20610:40,20270:40
pause
