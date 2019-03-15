@echo off
set T_FILENAME="Urban Champion (W) [!].nes"
set SCRIPTNAME="urbanchampionnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
