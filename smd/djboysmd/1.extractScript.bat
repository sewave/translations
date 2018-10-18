@echo off
set T_FILENAME="DJ Boy (U) [!].bin"
set SCRIPTNAME="djboysmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
