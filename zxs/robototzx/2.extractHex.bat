@echo off
set T_FILENAME="TR_Roboto.tzx"
set SCRIPTNAME="robototzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8AA5:20,8B65:28,8CF5:80,96EA:20
pause
