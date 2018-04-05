@echo off 
set T_FILENAME="Mortal Kombat (U) [!].gg"
set SCRIPTNAME="mk1gg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
