@echo off
set T_FILENAME="Shove It! ...The Warehouse Game (USA).md"
set SCRIPTNAME="shoveitthewarehousegamesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
