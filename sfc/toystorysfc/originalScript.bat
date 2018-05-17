@echo off 
set T_FILENAME="Toy Story (U) [!].smc"
set SCRIPTNAME="toystorysfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
