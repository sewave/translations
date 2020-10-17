@echo off
set T_FILENAME="Kirby's Dream Course (USA).sfc"
set SCRIPTNAME="kirbysdreamcoursesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
