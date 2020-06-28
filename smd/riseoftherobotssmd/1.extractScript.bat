@echo off
set T_FILENAME="Rise of the Robots (E) [!].bin"
set SCRIPTNAME="riseoftherobotssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
