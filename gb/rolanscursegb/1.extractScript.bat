@echo off
set T_FILENAME="Rolan's Curse (U) [!].gb"
set SCRIPTNAME="rolanscursegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
