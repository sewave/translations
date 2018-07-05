@echo off
set T_FILENAME="Death and Return of Superman, The (U).smc"
set SCRIPTNAME="deathandreturnofsupermanthesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
