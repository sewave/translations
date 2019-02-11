@echo off
set T_FILENAME="Cannon Fodder (E) [!].bin"
set SCRIPTNAME="cannonfoddersmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
