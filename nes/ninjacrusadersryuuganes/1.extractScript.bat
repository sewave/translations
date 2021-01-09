@echo off
set T_FILENAME="Ninja Crusaders - Ryuuga (Japan).nes"
set SCRIPTNAME="ninjacrusadersryuuganes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
