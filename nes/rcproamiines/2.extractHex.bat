@echo off
set T_FILENAME="TR_R.C. Pro-Am II (USA).nes"
set SCRIPTNAME="rcproamiines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
