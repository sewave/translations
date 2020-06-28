@echo off
set T_FILENAME="Rise of the Robots (USA).sfc"
set SCRIPTNAME="riseoftherobotssfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
