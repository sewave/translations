@echo off
set T_FILENAME="Turbo Outrun (JE) [c][!].gen"
set SCRIPTNAME="turbooutrunsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
