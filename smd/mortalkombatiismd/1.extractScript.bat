@echo off
set T_FILENAME="Mortal Kombat II (World).md"
set SCRIPTNAME="mortalkombatiismd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
