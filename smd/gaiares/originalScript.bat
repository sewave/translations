@echo off 
set T_FILENAME="Gaiares (JU) [!].gen"
set SCRIPTNAME="gaiares"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
