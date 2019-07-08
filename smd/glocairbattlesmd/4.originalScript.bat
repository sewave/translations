@echo off
set T_FILENAME="G-LOC Air Battle (W) [c][!].bin"
set SCRIPTNAME="glocairbattlesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
