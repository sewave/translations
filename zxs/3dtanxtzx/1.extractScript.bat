@echo off
set T_FILENAME="3D Tanx.tzx"
set SCRIPTNAME="3dtanxtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
