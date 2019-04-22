@echo off
set T_FILENAME="Orguss (SG-1000).sg"
set SCRIPTNAME="orgusssg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
