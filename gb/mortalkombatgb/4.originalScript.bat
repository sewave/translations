@echo off
set T_FILENAME="Mortal Kombat (U) [!].gb"
set SCRIPTNAME="mortalkombatgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
