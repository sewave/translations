@echo off
set T_FILENAME="Vattle Giuce (J) [!].gb"
set SCRIPTNAME="vattlegiucegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
