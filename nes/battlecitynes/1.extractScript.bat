@echo off
set T_FILENAME="BattleCity (Japan).nes"
set SCRIPTNAME="battlecitynes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
