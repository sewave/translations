@echo off
set T_FILENAME="TR_Makai Island (USA) (Proto).nes"
set SCRIPTNAME="makaiislandnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 29C0:50,2C10:10,2F30:30
pause
