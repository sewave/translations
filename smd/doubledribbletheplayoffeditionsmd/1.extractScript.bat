@echo off
set T_FILENAME="Double Dribble - The Playoff Edition (USA).md"
set SCRIPTNAME="doubledribbletheplayoffeditionsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
