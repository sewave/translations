@echo off
set T_FILENAME="TR_STING.nes"
set SCRIPTNAME="stingnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8B30:30,8C30:30,8F60:80
pause
