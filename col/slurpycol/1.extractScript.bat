@echo off
set T_FILENAME="Slurpy (1984) (Xonox).col"
set SCRIPTNAME="slurpycol"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
