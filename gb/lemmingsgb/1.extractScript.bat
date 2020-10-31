@echo off
set T_FILENAME="Lemmings (USA).gb"
set SCRIPTNAME="lemmingsgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
