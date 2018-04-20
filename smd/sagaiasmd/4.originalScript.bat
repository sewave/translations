@echo off
set T_FILENAME="Sagaia (U) [c][!].gen"
set SCRIPTNAME="sagaiasmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
