@echo off
set T_FILENAME="NBA Jam (U) (V1.1) [!].gg"
set SCRIPTNAME="nbajamgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
