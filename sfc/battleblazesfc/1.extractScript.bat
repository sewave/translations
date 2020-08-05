@echo off
set T_FILENAME="Battle Blaze (USA).sfc"
set SCRIPTNAME="battleblazesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
