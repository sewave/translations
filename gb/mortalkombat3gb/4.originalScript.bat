@echo off
set T_FILENAME="Mortal Kombat 3 (U) [!].gb"
set SCRIPTNAME="mortalkombat3gb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
