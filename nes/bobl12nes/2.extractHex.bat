@echo off
set T_FILENAME="TR_bobl-1.2.nes"
set SCRIPTNAME="bobl12nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 15695:10,15B45:60,15A05:20
pause
