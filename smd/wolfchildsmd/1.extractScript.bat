@echo off
set T_FILENAME="Wolf Child (U) [c][!].gen"
set SCRIPTNAME="wolfchildsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
