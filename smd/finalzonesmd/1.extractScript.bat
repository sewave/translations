@echo off
set T_FILENAME="Final Zone (JU) [!].bin"
set SCRIPTNAME="finalzonesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
