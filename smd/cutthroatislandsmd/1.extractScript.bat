@echo off
set T_FILENAME="Cutthroat Island (UE) [!].bin"
set SCRIPTNAME="cutthroatislandsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
