@echo off
set T_FILENAME="Jajamaru no Daibouken (Japan).nes"
set SCRIPTNAME="jajamarunodaiboukennes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
