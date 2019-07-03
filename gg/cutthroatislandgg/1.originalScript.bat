@echo off
set T_FILENAME="Cutthroat Island (U) [!].gg"
set SCRIPTNAME="cutthroatislandgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
