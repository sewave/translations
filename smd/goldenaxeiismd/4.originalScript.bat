@echo off
set T_FILENAME="Golden Axe II (W) [!].bin"
set SCRIPTNAME="goldenaxeiismd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
