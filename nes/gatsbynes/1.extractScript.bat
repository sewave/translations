@echo off
set T_FILENAME="Gatsby.nes"
set SCRIPTNAME="gatsbynes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
