@echo off
set T_FILENAME="Cutthroat Island (U) [!].smc"
set SCRIPTNAME="cutthroatislandsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
