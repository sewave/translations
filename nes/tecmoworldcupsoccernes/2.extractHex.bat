@echo off
set T_FILENAME="TR_Tecmo World Cup Soccer (Japan).nes"
set SCRIPTNAME="tecmoworldcupsoccernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 17220:60
pause
