@echo off
set T_FILENAME="OldTower48.tap"
set SCRIPTNAME="oldtower48tap"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
