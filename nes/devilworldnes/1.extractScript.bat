@echo off
set T_FILENAME="Devil World (J) [!].nes"
set SCRIPTNAME="devilworldnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
