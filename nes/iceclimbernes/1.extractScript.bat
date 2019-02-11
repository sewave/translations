@echo off
set T_FILENAME="Ice Climber (U) [!].nes"
set SCRIPTNAME="iceclimbernes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
