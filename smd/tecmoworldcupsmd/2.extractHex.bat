@echo off
set T_FILENAME="TR_Tecmo World Cup (USA).md"
set SCRIPTNAME="tecmoworldcupsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
