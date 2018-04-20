@echo off
set T_FILENAME="Rolling Thunder 2 (U) [c][!].bin"
set SCRIPTNAME="rollingthunder2smd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
