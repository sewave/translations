@echo off
set T_FILENAME="TR_Rollerball (USA).nes"
set SCRIPTNAME="rollerballnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 26EF0:20
pause
