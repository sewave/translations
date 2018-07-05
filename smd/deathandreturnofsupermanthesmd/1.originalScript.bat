@echo off
set T_FILENAME="Death and Return of Superman, The (U) [!].bin"
set SCRIPTNAME="deathandreturnofsupermanthesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
