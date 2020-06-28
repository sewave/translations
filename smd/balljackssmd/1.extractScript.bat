@echo off
set T_FILENAME="Ball Jacks (JE) [c][!].bin"
set SCRIPTNAME="balljackssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
