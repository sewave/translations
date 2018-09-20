@echo off 
set T_FILENAME="Mortal Kombat 3 (U) [!].gg"
set SCRIPTNAME="mk3gg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
