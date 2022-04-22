@echo off
set T_FILENAME="Penguin Adventure (Japan, Europe).rom"
set SCRIPTNAME="penguinadventurerom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
