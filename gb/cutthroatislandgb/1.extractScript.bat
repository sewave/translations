@echo off
set T_FILENAME="Cutthroat Island (U).gb"
set SCRIPTNAME="cutthroatislandgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
