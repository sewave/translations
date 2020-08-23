@echo off
set T_FILENAME="Mask, The (USA).sfc"
set SCRIPTNAME="maskthesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
