@echo off
set T_FILENAME="Jelly Boy (Beta).bin"
set SCRIPTNAME="jellyboysmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
