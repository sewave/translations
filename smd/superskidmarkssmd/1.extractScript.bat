@echo off
set T_FILENAME="Super Skidmarks (Europe) (J-Cart).md"
set SCRIPTNAME="superskidmarkssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
