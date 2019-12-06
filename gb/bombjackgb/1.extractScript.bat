@echo off
set T_FILENAME="Bomb Jack (U).gb"
set SCRIPTNAME="bombjackgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
