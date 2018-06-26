@echo off 
set T_FILENAME="Pink Goes to Hollywood (U) [!].gen"
set SCRIPTNAME="pinkhwsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
