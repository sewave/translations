@echo off
set T_FILENAME="Star Soldier (U) [!].nes"
set SCRIPTNAME="starsoldiernes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
