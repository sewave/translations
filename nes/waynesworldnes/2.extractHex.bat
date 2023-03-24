@echo off
set T_FILENAME="TR_Wayne's World (USA).nes"
set SCRIPTNAME="waynesworldnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 21AB0:60,21BC0:40
pause
