@echo off
set T_FILENAME="OldTower128.tap"
set SCRIPTNAME="oldtower128tap"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
