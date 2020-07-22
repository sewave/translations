@echo off
set T_FILENAME="Humans, The (Europe).sfc"
set SCRIPTNAME="humansthesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
