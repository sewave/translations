@echo off
set T_FILENAME="Batman Returns (USA).sfc"
set SCRIPTNAME="batmanreturnssfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
java -jar Hextractor.jar -a %SCRIPTNAME%Big.tbl %T_FILENAME% %SCRIPTNAME%Big.ext %SCRIPTNAME%Big.off
pause
