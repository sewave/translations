@echo off
set T_FILENAME="Dragon's Curse (U).pce"
set SCRIPTNAME="dragonscursepce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
