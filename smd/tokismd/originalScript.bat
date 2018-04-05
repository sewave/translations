@echo off 
set T_FILENAME="Toki - Going Ape Spit (UE) [c][!].bin"
set SCRIPTNAME="tokismd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
