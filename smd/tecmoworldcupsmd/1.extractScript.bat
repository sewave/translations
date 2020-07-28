@echo off
set T_FILENAME="Tecmo World Cup (USA).md"
set SCRIPTNAME="tecmoworldcupsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
