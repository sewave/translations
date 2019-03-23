@echo off
set T_FILENAME="Soccer (JU) [!].nes"
set SCRIPTNAME="soccernes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
