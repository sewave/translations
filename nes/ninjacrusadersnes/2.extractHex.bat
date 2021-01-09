@echo off
set T_FILENAME="TR_Ninja Crusaders (USA).nes"
set SCRIPTNAME="ninjacrusadersnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex BE10:10,BE70:40,BD50:10
pause
