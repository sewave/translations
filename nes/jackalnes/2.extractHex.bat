@echo off
set T_FILENAME="TR_Jackal (USA).nes"
set SCRIPTNAME="jackalnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 13BE0:10,13C10:10,13C40:10,13C60:10
pause
