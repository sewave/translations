@echo off
set T_FILENAME="Mr. Nutz (E) [!].bin"
set SCRIPTNAME="mrnutzsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
