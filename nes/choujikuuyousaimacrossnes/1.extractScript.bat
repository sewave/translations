@echo off
set T_FILENAME="Choujikuu Yousai - Macross (Japan).nes"
set SCRIPTNAME="choujikuuyousaimacrossnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
