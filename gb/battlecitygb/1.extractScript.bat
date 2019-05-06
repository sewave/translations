@echo off
set T_FILENAME="BattleCity (J) [!].gb"
set SCRIPTNAME="battlecitygb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
