@echo off
set T_FILENAME="X Dazedly Ray (J) [!].bin"
set SCRIPTNAME="xdazedlyraysmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
