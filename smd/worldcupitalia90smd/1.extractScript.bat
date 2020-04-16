@echo off
set T_FILENAME="World Cup Italia '90 (Europe).md"
set SCRIPTNAME="worldcupitalia90smd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
