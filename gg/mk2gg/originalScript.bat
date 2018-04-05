@echo off 
set T_FILENAME="Mortal Kombat II (U) [!].gg"
set SCRIPTNAME="mk2gg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
