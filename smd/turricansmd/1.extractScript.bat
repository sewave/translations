@echo off
set T_FILENAME="Turrican (U) [c][!].gen"
set SCRIPTNAME="turricansmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
