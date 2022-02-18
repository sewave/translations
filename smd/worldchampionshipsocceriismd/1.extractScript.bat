@echo off
set T_FILENAME="World Championship Soccer II (USA).md"
set SCRIPTNAME="worldchampionshipsocceriismd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
