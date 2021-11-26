@echo off
set T_FILENAME="Double Dungeons - W (USA).pce"
set SCRIPTNAME="doubledungeonspce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
