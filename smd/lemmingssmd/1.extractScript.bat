@echo off
set T_FILENAME="Lemmings (Japan, USA) (v1.1).md"
set SCRIPTNAME="lemmingssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
